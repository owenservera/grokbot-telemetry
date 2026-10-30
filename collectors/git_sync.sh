#!/usr/bin/env bash
# git_sync.sh — stage safe paths under /workspace/grokbot-telemetry and commit if dirty.
# Push path A: `gh` CLI once authenticated (`gh auth status` OK) → git push.
# Push path B: GitHub MCP user-GitHub-xai push_files (preferred when gh is NOT logged in).
# Never stages secret-looking filenames.
set -euo pipefail
ROOT="/workspace/grokbot-telemetry"
cd "$ROOT"

# Serialize with always_on daemon / sync-loop (race seen 2026-10-15 06:21: concurrent rebase hit unstaged changes).
exec 8>/tmp/grokbot-telemetry-git_sync.lock
flock -w 120 8 || { echo "FAIL: git_sync lock busy >120s" >&2; exit 1; }

TS="$(date '+%Y-%m-%d %H:%M:%S %Z')"

rebase_in_progress() { [[ -d .git/rebase-merge || -d .git/rebase-apply ]]; }
# A leftover rebase from a prior crashed/raced run must not be committed onto (detached HEAD). Fail loudly.
if rebase_in_progress; then
  echo "FAIL: stale rebase in progress at start; aborting it (manual check of detached commits may be needed)" >&2
  git rebase --abort 2>/dev/null || true
  exit 1
fi
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
  README.md WAKE.md INDEX.md ARCHITECTURE.md TOOL_CATALOG.md PROCESS_MAP.md COLLECTORS.md verify.sh \
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
  # Still try push if we have unpushed commits (e.g. prior always_on commit).
  if gh auth token >/dev/null 2>&1 || gh auth status >/dev/null 2>&1; then
    git fetch origin main >/dev/null 2>&1 || true
    if git rev-parse --verify origin/main >/dev/null 2>&1 \
      && [[ "$(git rev-list --count origin/main..HEAD 2>/dev/null || echo 0)" != "0" ]]; then
      if ! git merge-base --is-ancestor origin/main HEAD 2>/dev/null; then
        echo "Diverged from origin/main; rebasing before push..."
        git -c user.email="telemetry-master@local" -c user.name="TELEMETRY-MASTER" rebase --autostash -X theirs origin/main || {
          echo "FAIL: rebase needed but conflicted with no new commit path" >&2
          git rebase --abort 2>/dev/null || true
          exit 1
        }
      fi
      timeout 90 git -c http.lowSpeedLimit=1000 -c http.lowSpeedTime=30 push -u origin HEAD:main
      echo "Pushed via gh/git (no new commit) ($TS)"
    fi
  fi
  exit 0
fi

git -c user.email="telemetry-master@local" -c user.name="TELEMETRY-MASTER" commit -m "$MSG" || true
echo "Committed locally: $MSG"

if gh auth token >/dev/null 2>&1 || gh auth status >/dev/null 2>&1; then
  # Rebase onto remote if diverged (common when always_on + sync-loop race, or remote moved).
  git fetch origin main >/dev/null 2>&1 || true
  if git rev-parse --verify origin/main >/dev/null 2>&1 \
    && ! git merge-base --is-ancestor origin/main HEAD 2>/dev/null; then
    echo "Diverged from origin/main; rebasing before push..."
    if ! git -c user.email="telemetry-master@local" -c user.name="TELEMETRY-MASTER" rebase --autostash origin/main; then
      # Prefer the commit being applied (local newer snapshots) for conflicted latest files.
      while git diff --name-only --diff-filter=U 2>/dev/null | grep -q .; do
        while IFS= read -r f; do
          [[ -z "$f" ]] && continue
          git checkout --theirs -- "$f" 2>/dev/null || true
          git add -- "$f"
        done < <(git diff --name-only --diff-filter=U 2>/dev/null || true)
        if ! GIT_EDITOR=true git -c user.email="telemetry-master@local" -c user.name="TELEMETRY-MASTER" rebase --continue; then
          if git diff --name-only --diff-filter=U 2>/dev/null | grep -q .; then
            continue
          fi
          echo "FAIL: rebase could not continue" >&2
          git rebase --abort 2>/dev/null || true
          exit 1
        fi
      done
    fi
  fi
  if rebase_in_progress || [[ "$(git symbolic-ref -q --short HEAD || true)" != "main" ]]; then
    echo "FAIL: rebase did not complete (dirty tree or non-conflict error); aborting, not pushing" >&2
    git rebase --abort 2>/dev/null || true
    exit 1
  fi
  timeout 90 git -c http.lowSpeedLimit=1000 -c http.lowSpeedTime=30 push -u origin HEAD:main
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
