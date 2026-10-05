#!/usr/bin/env bash
# Collector 2 skeleton: safe CLI inventory (never runs daintree --version)
set -euo pipefail
ROOT="/workspace/grokbot-telemetry"
DATA="$ROOT/DATA"
mkdir -p "$DATA"
TS=$(date '+%Y%m%d-%H%M%S')
OUT="$DATA/cli_inventory_${TS}.jsonl"
ALLOW=(bash sh node npm bun python3 uv git curl jq rg gh claude codex grok opencode kilo goose aider gemini playwright pnpm)
# NEVER: daintree --version (launches Electron GUI)
echo "# safe inventory $(date '+%Y-%m-%d %H:%M:%S %Z')" > "$DATA/cli_inventory_latest.md"
echo "| cli | path | version |" >> "$DATA/cli_inventory_latest.md"
echo "|-----|------|---------|" >> "$DATA/cli_inventory_latest.md"
: > "$OUT"
for c in "${ALLOW[@]}"; do
  p=$(command -v "$c" 2>/dev/null || true)
  if [[ -z "$p" ]]; then
    python3 -c 'import json; print(json.dumps({"timestamp":"'"$(date -Iseconds)"'","source":"cli_inventory","cli":"'"$c"'","present":False}))' >> "$OUT"
    echo "| $c | MISSING | | |" >> "$DATA/cli_inventory_latest.md"
    continue
  fi
  ver=$(timeout 5 "$c" --version 2>&1 | head -1 | tr '\n' ' ' | sed 's/[[:space:]]\+/ /g' || echo "?")
  # redact accidental secrets in version output
  ver=$(printf '%s' "$ver" | sed -E 's/(token|key|secret|password)[=:][^ ]+/\1=[REDACTED]/gi')
  python3 -c 'import json; print(json.dumps({"timestamp":"'"$(date -Iseconds)"'","source":"cli_inventory","cli":"'"$c"'","present":True,"path":"'"$p"'","version":"""'"$ver"'"""}))' >> "$OUT" 2>/dev/null || \
    echo "{\"cli\":\"$c\",\"path\":\"$p\",\"version\":\"$ver\"}" >> "$OUT"
  echo "| $c | \`$p\` | $ver |" >> "$DATA/cli_inventory_latest.md"
done
# daintree: path only
if command -v daintree >/dev/null; then
  echo "| daintree | \`$(command -v daintree)\` | DO_NOT_AUTO_VERSION (Electron) |" >> "$DATA/cli_inventory_latest.md"
fi
cp -f "$OUT" "$DATA/cli_inventory_latest.jsonl"
echo "WROTE $OUT"
