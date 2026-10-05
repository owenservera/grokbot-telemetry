#!/usr/bin/env bash
# git_sync.sh — stage safe paths under /workspace/grokbot-telemetry and commit if dirty.
# Push path A: `gh` CLI once authenticated (`gh auth status` OK) → git push.
# Push path B: GitHub MCP user-GitHub-xai push_files (preferred when gh is NOT logged in).
# Never stages secret-looking filenames.
set -euo pipefail
ROOT="/workspace/grokbot-telemetry"
cd "$ROOT"

TS="$(date '+%Y-%m-%d %H:%M:%S %Z')"
MSG="${1:-telemetry sync ${TS}}"

# Ensure git repo
if [[ ! -d .git ]]; then
  git init -b main >/dev/null
  git remote remove origin 2>/dev/null || true
  git remote add origin https://github.com/owenservera/grokbot-telemetry.git
fi

# .gitignore for safety
if [[ ! -f .gitignore ]]; then
  cat > .gitignore <<'GI'
# never commit secrets
**/auth.json
**/.credentials.json
**/*secret*
**/*credential*
**/creds-export.csv
**/*token*
**/*cookie*
.env
.env.*
*.pem
*.key
GI
fi

# Stage allowlisted paths only
git add -A -- \
  README.md INDEX.md ARCHITECTURE.md TOOL_CATALOG.md PROCESS_MAP.md COLLECTORS.md verify.sh \
  SCHEMAS SESSION_LOG ACTION_TRACE DIFFS DATA collectors \
  .gitignore 2>/dev/null || true

# Unstage anything secretish that slipped in
while IFS= read -r f; do
  case "$f" in
    *secret*|*credential*|*auth.json*|*creds*|*token*|*cookie*|.env*)
      git reset HEAD -- "$f" 2>/dev/null || true
      echo "SKIP (secretish): $f" >&2
      ;;
  esac
done < <(git diff --cached --name-only 2>/dev/null || true)

if git diff --cached --quiet 2>/dev/null; then
  echo "No changes to commit ($TS)"
  exit 0
fi

git -c user.email="telemetry-master@local" -c user.name="TELEMETRY-MASTER" commit -m "$MSG" || true
echo "Committed locally: $MSG"

if gh auth status >/dev/null 2>&1; then
  git push -u origin HEAD:main
  echo "Pushed via gh/git ($TS)"
else
  cat <<'NOTE'
NOTE: gh CLI is NOT authenticated. Local commit created (if any), but push skipped.
Use GitHub MCP push_files (user-GitHub-xai) from TELEMETRY-MASTER, or run:
  gh auth login
then re-run collectors/git_sync.sh
NOTE
  exit 2
fi
