#!/usr/bin/env bash
# always_on.sh — box-resident observability daemon (independent of chat wakes).
# Every cycle: run_all.sh → git_sync.sh (commit if dirty + push to owenservera/grokbot-telemetry) → sleep 300s.
# Single instance via flock. Never runs `daintree --version`. Collectors redact argv secrets.
set -uo pipefail
ROOT="/workspace/grokbot-telemetry"
DATA="$ROOT/DATA"
LOG="$DATA/always_on.log"
PIDFILE="$DATA/always_on.pid"
LOCK="$DATA/.always_on.lock"
INTERVAL="${ALWAYS_ON_INTERVAL:-300}"
MAX_LOG_BYTES="${ALWAYS_ON_MAX_LOG_BYTES:-5242880}"   # 5 MiB then rotate to .1
KEEP_SNAPSHOTS="${ALWAYS_ON_KEEP_SNAPSHOTS:-288}"     # ~24h of 5-min snapshots per collector (local only)
mkdir -p "$DATA"

exec 9>"$LOCK"
if ! flock -n 9; then
  echo "always_on: already running; pid=$(cat "$PIDFILE" 2>/dev/null)" >&2
  exit 0
fi
echo $$ > "$PIDFILE"
log() { echo "[$(date '+%F %T %Z')] $*" >> "$LOG"; }
trap 'log "always_on stopping pid=$$"; rm -f "$PIDFILE"' EXIT
trap 'exit 0' TERM INT

rotate_log() {
  local sz; sz=$(stat -c %s "$LOG" 2>/dev/null || echo 0)
  if [[ "$sz" -gt "$MAX_LOG_BYTES" ]]; then mv -f "$LOG" "$LOG.1"; log "log rotated (${sz} bytes)"; fi
}

prune_snapshots() {
  # Prune only untracked timestamped snapshots; git-tracked history is never deleted.
  local tracked; tracked=$(cd "$ROOT" && git ls-files DATA 2>/dev/null)
  for prefix in exec_daemon_ cli_inventory_ sandbox_telemetry_ cdp_display_map_; do
    ls -1t "$DATA"/${prefix}2*.json* 2>/dev/null | tail -n +$((KEEP_SNAPSHOTS + 1)) | while read -r f; do
      grep -qxF "DATA/$(basename "$f")" <<<"$tracked" || rm -f -- "$f"
    done
  done
}

log "always_on start pid=$$ interval=${INTERVAL}s"
while true; do
  rotate_log
  if "$ROOT/collectors/run_all.sh" >> "$LOG" 2>&1; then log "run_all OK"; else log "run_all FAIL exit=$?"; fi
  prune_snapshots
  # Always attempt sync: git_sync commits only if dirty, then pushes.
  if "$ROOT/collectors/git_sync.sh" "telemetry always_on $(date '+%F %H:%M %Z')" >> "$LOG" 2>&1; then
    log "git_sync OK head=$(cd "$ROOT" && git rev-parse --short HEAD)"
  else
    log "git_sync FAIL exit=$? (retry next cycle)"
  fi
  sleep "$INTERVAL" & wait $!
done
