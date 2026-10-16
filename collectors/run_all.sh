#!/usr/bin/env bash
# Run all TELEMETRY-MASTER collectors in order; non-zero if any fail.
set -uo pipefail
ROOT="/workspace/grokbot-telemetry"
COLLECTORS="$ROOT/collectors"
mkdir -p "$ROOT/DATA"
# Share git_sync's lock so collectors never rewrite DATA/ mid-rebase (race seen 2026-10-16 11:47: always_on run_all
# rewrote DATA/*_latest.* while sync-loop git_sync was rebasing -> stuck rebase, false "Pushed").
exec 7>/tmp/grokbot-telemetry-git_sync.lock
flock -w 180 7 || { echo "FAIL: run_all could not get repo lock >180s" >&2; exit 1; }
LOG="$ROOT/DATA/run_all_latest.log"
TS=$(date '+%Y-%m-%d %H:%M:%S %Z')

exec > >(tee "$LOG") 2>&1
echo "=== run_all start $TS ==="
fail=0
for script in exec_daemon_sample.sh cli_inventory.sh sandbox_telemetry_parse.sh; do
  path="$COLLECTORS/$script"
  echo "--- running $script ---"
  if [[ ! -x "$path" ]]; then
    echo "FAIL: missing or not executable: $path"
    fail=1
    continue
  fi
  if "$path"; then
    echo "OK: $script"
  else
    ec=$?
    echo "FAIL: $script exit $ec"
    fail=1
  fi
done
echo "=== run_all end $(date '+%Y-%m-%d %H:%M:%S %Z') fail=$fail ==="
exit "$fail"
