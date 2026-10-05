#!/usr/bin/env bash
# Run all TELEMETRY-MASTER collectors in order; non-zero if any fail.
set -uo pipefail
ROOT="/workspace/grokbot-telemetry"
COLLECTORS="$ROOT/collectors"
mkdir -p "$ROOT/DATA"
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
