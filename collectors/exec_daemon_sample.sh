#!/usr/bin/env bash
# Collector 1: Shell / exec-daemon correlator
# Snapshots exec-daemon serve trees → JSONL under DATA/ + optional markdown summary.
# Never prints secret file contents; redacts secret-looking argv tokens.
set -euo pipefail
# SOFT_CHILD: child enumeration uses || true everywhere

ROOT="/workspace/grokbot-telemetry"
DATA="$ROOT/DATA"
mkdir -p "$DATA"

TS_FILE=$(date '+%Y%m%d-%H%M%S')
TS_ISO=$(date '+%Y-%m-%dT%H:%M:%S%z')
TS_HUMAN=$(date '+%Y-%m-%d %H:%M:%S %Z')
OUT_JSONL="$DATA/exec_daemon_${TS_FILE}.jsonl"
OUT_LATEST="$DATA/exec_daemon_latest.jsonl"
SUMMARY_MD="$DATA/exec_daemon_latest.md"

# Redact argv: replace values after secret-looking flags / JWT-ish / long hex
redact_cmd() {
  local s="$1"
  # --auth-token X, --pty-auth-token X, --token X, --api-key X, etc.
  s=$(printf '%s' "$s" | sed -E \
    -e 's/(--?(auth[-_]?token|pty[-_]?auth[-_]?token|api[-_]?key|access[-_]?token|secret|password|passwd|bearer|credential)[= ]+)[^[:space:]]+/\1[REDACTED]/gi' \
    -e 's/(Authorization:[[:space:]]*Bearer[[:space:]]+)[^[:space:]]+/\1[REDACTED]/gi' \
    -e 's/\beyJ[A-Za-z0-9_-]{20,}\.[A-Za-z0-9_-]+\.[A-Za-z0-9_-]+\b/[JWT_REDACTED]/g' \
    -e 's/\b[0-9a-f]{32,}\b/[HEX_REDACTED]/gi')
  printf '%s' "$s"
}

# Read cwd for pid (may fail)
pid_cwd() {
  local p="$1"
  readlink -f "/proc/$p/cwd" 2>/dev/null || echo ""
}

pid_stat() {
  # state from /proc/pid/stat field 3
  local p="$1"
  awk '{print $3}' "/proc/$p/stat" 2>/dev/null || echo "?"
}

pid_start_human() {
  local p="$1"
  # etime from ps
  ps -p "$p" -o lstart= 2>/dev/null | sed 's/^ *//' || echo ""
}

pid_etime() {
  local p="$1"
  ps -p "$p" -o etime= 2>/dev/null | tr -d ' ' || echo ""
}

# Load agent display map (assignments only; never emit tokens)
declare -A AGENT_BY_DISPLAY=()
declare -A NAME_BY_AGENT=()
if [[ -f /home/box/.sand-window-assignments.json ]]; then
  while IFS=$'\t' read -r aid disp; do
    AGENT_BY_DISPLAY["$disp"]="$aid"
  done < <(jq -r '.assignments|to_entries[]|"\(.key)\t\(.value)"' /home/box/.sand-window-assignments.json 2>/dev/null || true)
fi
for d in /home/box/sand-data/agents/*/; do
  id=$(basename "$d")
  [[ -f "$d/profile.json" ]] || continue
  name=$(jq -r '.name // empty' "$d/profile.json" 2>/dev/null || true)
  NAME_BY_AGENT["$id"]="$name"
done

json_escape() {
  python3 -c 'import json,sys; print(json.dumps(sys.stdin.read()[:-1] if False else sys.argv[1]))' "$1" 2>/dev/null || printf '"%s"' "${1//\"/\\\"}"
}

emit() {
  # emit JSON object line from key=value pairs via python for safety
  python3 - "$@" <<'PY'
import json, sys
obj = {}
i = 0
args = sys.argv[1:]
while i < len(args):
    k = args[i]
    v = args[i+1] if i+1 < len(args) else ""
    # typed fields
    if k in ("pid","ppid","port","pty_port","display_num","depth") and v != "" and v != "null":
        try:
            obj[k] = int(v)
        except ValueError:
            obj[k] = v
    elif k == "redaction_notes":
        obj[k] = [x for x in v.split("|") if x] if v else []
    else:
        if v == "null":
            obj[k] = None
        else:
            obj[k] = v
    i += 2
print(json.dumps(obj, ensure_ascii=False))
PY
}

: > "$OUT_JSONL"

# Find serve daemons: /exec-daemon/index.js serve --port N
mapfile -t DAEMON_PIDS < <(pgrep -f '/exec-daemon/index\.js serve --port' 2>/dev/null || true)

echo "# exec_daemon_sample $TS_HUMAN" > "$SUMMARY_MD"
echo "" >> "$SUMMARY_MD"
echo "| pid | port | pty | display | agent | children |" >> "$SUMMARY_MD"
echo "|-----|------|-----|---------|-------|----------|" >> "$SUMMARY_MD"

for pid in "${DAEMON_PIDS[@]:-}"; do
  [[ -n "$pid" ]] || continue
  raw_cmd=$(ps -p "$pid" -o args= 2>/dev/null || true)
  [[ -n "$raw_cmd" ]] || continue
  cmd=$(redact_cmd "$raw_cmd")
  rednotes=""
  if [[ "$cmd" != "$raw_cmd" ]]; then rednotes="argv_redacted"; fi

  port=$(printf '%s' "$raw_cmd" | sed -nE 's/.*--port ([0-9]+).*/\1/p' | head -1)
  pty=$(printf '%s' "$raw_cmd" | sed -nE 's/.*--pty-websocket-port ([0-9]+).*/\1/p' | head -1)
  cwd=$(pid_cwd "$pid")
  state=$(pid_stat "$pid")
  lstart=$(pid_start_human "$pid")
  etime=$(pid_etime "$pid")
  ppid=$(ps -p "$pid" -o ppid= 2>/dev/null | tr -d ' ')

  # Map port → display: 1337→1 (base), 1400N → N where N=port-14000
  display_num=""
  display_str=""
  if [[ "$port" == "1337" ]]; then
    display_num=1
    display_str=":1"
  elif [[ "$port" =~ ^1400([0-9]+)$ ]]; then
    display_num="${BASH_REMATCH[1]}"
    # 14002 → 2, 14003 → 3, ...
    display_num=$((10#$port - 14000))
    display_str=":$display_num"
  fi

  agent_id=""
  agent_name=""
  if [[ -n "${display_num}" ]]; then
    agent_id="${AGENT_BY_DISPLAY[$display_num]:-}"
  fi
  if [[ -n "$agent_id" ]]; then
    agent_name="${NAME_BY_AGENT[$agent_id]:-}"
  fi

  emit \
    timestamp "$TS_ISO" \
    source "exec_daemon_sample" \
    kind "daemon" \
    pid "$pid" \
    ppid "${ppid:-null}" \
    port "${port:-null}" \
    pty_port "${pty:-null}" \
    display "$display_str" \
    display_num "${display_num:-null}" \
    agent_id "${agent_id:-}" \
    agent_name "${agent_name:-}" \
    cmdline "$cmd" \
    cwd "$cwd" \
    state "$state" \
    start_time "$lstart" \
    etime "$etime" \
    redaction_notes "$rednotes" \
    >> "$OUT_JSONL"

  # Collect descendants (breadth via ps --ppid recursively, depth-limited)
  # Use pstree-like walk with /proc
  declare -a queue=("$pid")
  declare -A seen=()
  declare -A depth_map=()
  seen[$pid]=1
  depth_map[$pid]=0
  child_count=0
  while [[ ${#queue[@]} -gt 0 ]]; do
    cur="${queue[0]}"
    queue=("${queue[@]:1}")
    cur_depth=${depth_map[$cur]:-0}
    [[ "$cur_depth" -ge 6 ]] && continue
    # children
    for c in $(ps --ppid "$cur" -o pid= 2>/dev/null | tr -d ' '); do
      [[ -n "$c" ]] || continue
      [[ -n "${seen[$c]:-}" ]] && continue
      seen[$c]=1
      depth_map[$c]=$((cur_depth+1))
      queue+=("$c")
      child_count=$((child_count+1))

      craw=$(ps -p "$c" -o args= 2>/dev/null || true)
      if [[ -z "$craw" ]]; then continue; fi
      ccmd=$(redact_cmd "$craw")
      cred=""
      if [[ "$ccmd" != "$craw" ]]; then cred="argv_redacted"; fi
      # Truncate very long cmdlines (sandbox wrappers)
      if [[ ${#ccmd} -gt 500 ]]; then
        ccmd="${ccmd:0:500}…[truncated]"
        cred="${cred}|cmdline_truncated"
      fi
      ccwd=$(pid_cwd "$c")
      cstate=$(pid_stat "$c")
      cstart=$(pid_start_human "$c")
      cetime=$(pid_etime "$c")
      cppid=$(ps -p "$c" -o ppid= 2>/dev/null | tr -d ' ')

      emit \
        timestamp "$TS_ISO" \
        source "exec_daemon_sample" \
        kind "child" \
        pid "$c" \
        ppid "${cppid:-null}" \
        daemon_pid "$pid" \
        port "${port:-null}" \
        display "$display_str" \
        display_num "${display_num:-null}" \
        agent_id "${agent_id:-}" \
        agent_name "${agent_name:-}" \
        depth "${depth_map[$c]}" \
        cmdline "$ccmd" \
        cwd "$ccwd" \
        state "$cstate" \
        start_time "$cstart" \
        etime "$cetime" \
        redaction_notes "$cred" \
        >> "$OUT_JSONL"
    done
  done

  echo "| $pid | ${port:-?} | ${pty:-?} | ${display_str:-?} | ${agent_name:-?} (${agent_id:0:8}…) | $child_count |" >> "$SUMMARY_MD"
done

cp -f "$OUT_JSONL" "$OUT_LATEST"

# Also list other index.js serve if any missed
echo "" >> "$SUMMARY_MD"
echo "## Notes" >> "$SUMMARY_MD"
echo "- Snapshot: \`$TS_HUMAN\`" >> "$SUMMARY_MD"
echo "- JSONL: \`$OUT_JSONL\`" >> "$SUMMARY_MD"
echo "- Daemons found: ${#DAEMON_PIDS[@]}" >> "$SUMMARY_MD"
echo "- Auth tokens in argv replaced with [REDACTED]" >> "$SUMMARY_MD"

echo "WROTE $OUT_JSONL"
echo "SUMMARY $SUMMARY_MD"
echo "DAEMONS ${#DAEMON_PIDS[@]}"
wc -l "$OUT_JSONL"
