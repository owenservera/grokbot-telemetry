#!/usr/bin/env bash
# verify.sh — health check for grokbot-telemetry docs + collectors
set -euo pipefail
ROOT="/workspace/grokbot-telemetry"
FAIL=0
ok() { echo "OK  $*"; }
bad() { echo "FAIL $*"; FAIL=$((FAIL+1)); }

echo "=== grokbot-telemetry verify ==="
echo "time: $(date '+%Y-%m-%d %H:%M:%S %Z')"

for d in SESSION_LOG ACTION_TRACE DIFFS SCHEMAS collectors DATA; do
  if [[ -d "$ROOT/$d" ]]; then ok "dir $d"; else bad "dir $d missing"; fi
done

for f in INDEX.md ARCHITECTURE.md TOOL_CATALOG.md PROCESS_MAP.md COLLECTORS.md verify.sh; do
  if [[ -f "$ROOT/$f" ]]; then
    sz=$(wc -c < "$ROOT/$f" | tr -d ' ')
    if [[ "$sz" -gt 100 ]]; then ok "file $f ($sz bytes)"; else bad "file $f too small ($sz)"; fi
  else
    bad "file $f missing"
  fi
done

for s in exec_daemon_sample.sh cli_inventory.sh sandbox_telemetry_parse.sh run_all.sh; do
  if [[ -x "$ROOT/collectors/$s" ]]; then
    ok "collector executable $s"
  elif [[ -f "$ROOT/collectors/$s" ]]; then
    bad "collector $s exists but not executable"
  else
    bad "collector $s missing"
  fi
done

if [[ -f "$ROOT/SCHEMAS/telemetry-event.schema.json" ]]; then
  if python3 -c 'import json; json.load(open("'"$ROOT"'/SCHEMAS/telemetry-event.schema.json"))' 2>/dev/null; then
    ok "schema JSON parses"
  else
    bad "schema JSON invalid"
  fi
else
  bad "schema missing"
fi

for c in bash node python3 git rg jq; do
  if command -v "$c" >/dev/null 2>&1; then
    ok "which $c -> $(command -v "$c")"
  else
    bad "which $c"
  fi
done

if command -v daintree >/dev/null 2>&1; then
  ok "daintree present at $(command -v daintree) (do NOT auto-run --version)"
fi

if ls "$ROOT"/SESSION_LOG/2026-10-05*.md >/dev/null 2>&1; then
  ok "today SESSION_LOG present"
else
  bad "today SESSION_LOG missing"
fi

if ls "$ROOT"/ACTION_TRACE/*exec-daemon* >/dev/null 2>&1; then
  ok "exec-daemon ACTION_TRACE present"
else
  bad "exec-daemon ACTION_TRACE missing"
fi

if [[ -f "$ROOT/DATA/exec_daemon_latest.jsonl" ]]; then
  if python3 -c 'import json; lines=open("'"$ROOT"'/DATA/exec_daemon_latest.jsonl");
[json.loads(l) for l in lines if l.strip()]; print("ok")' >/dev/null 2>&1; then
    ok "exec_daemon_latest.jsonl parses"
  else
    bad "exec_daemon_latest.jsonl invalid JSONL"
  fi
else
  bad "DATA/exec_daemon_latest.jsonl missing (run collector 1)"
fi


if [[ -x "$ROOT/collectors/sandbox_telemetry_parse.sh" ]]; then
  ok "collector sandbox_telemetry_parse.sh executable"
else
  bad "collector sandbox_telemetry_parse.sh missing/not +x"
fi

if [[ -f "$ROOT/DATA/sandbox_telemetry_latest.json" ]]; then
  if python3 -c 'import json; json.load(open("'"$ROOT"'/DATA/sandbox_telemetry_latest.json"))' 2>/dev/null; then
    ok "sandbox_telemetry_latest.json parses"
  else
    bad "sandbox_telemetry_latest.json invalid"
  fi
else
  bad "DATA/sandbox_telemetry_latest.json missing"
fi

if [[ -f "$ROOT/DATA/cdp_display_map_latest.json" ]]; then
  if python3 -c 'import json; json.load(open("'"$ROOT"'/DATA/cdp_display_map_latest.json"))' 2>/dev/null; then
    ok "cdp_display_map_latest.json parses"
  else
    bad "cdp_display_map_latest.json invalid"
  fi
else
  bad "DATA/cdp_display_map_latest.json missing"
fi

if ls "$ROOT"/ACTION_TRACE/*sandbox-telemetry* >/dev/null 2>&1; then
  ok "sandbox-telemetry ACTION_TRACE present"
else
  bad "sandbox-telemetry ACTION_TRACE missing"
fi


if [[ -x "$ROOT/collectors/run_all.sh" ]]; then
  ok "collector run_all.sh executable"
else
  bad "collector run_all.sh missing/not +x"
fi

if [[ -f "$ROOT/DATA/run_all_latest.log" ]]; then
  if rg -q 'run_all (start|end)' "$ROOT/DATA/run_all_latest.log"; then
    ok "run_all_latest.log present"
  else
    bad "run_all_latest.log incomplete"
  fi
else
  bad "DATA/run_all_latest.log missing (run collectors/run_all.sh)"
fi

if ls "$ROOT"/ACTION_TRACE/*daintree-peer* >/dev/null 2>&1; then
  ok "daintree-peer ACTION_TRACE present"
else
  bad "daintree-peer ACTION_TRACE missing"
fi

if [[ "$FAIL" -eq 0 ]]; then
  echo "RESULT: PASS"
  exit 0
else
  echo "RESULT: FAIL ($FAIL checks)"
  exit 1
fi
