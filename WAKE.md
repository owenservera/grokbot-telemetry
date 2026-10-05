# WAKE — on-wake checklist (TELEMETRY-MASTER)

Run this at the start of every wake / sync turn.

## 1. Collect

```bash
/workspace/grokbot-telemetry/collectors/run_all.sh
```

If `run_all.sh` is missing, run individually:

```bash
/workspace/grokbot-telemetry/collectors/exec_daemon_sample.sh
/workspace/grokbot-telemetry/collectors/cli_inventory.sh
/workspace/grokbot-telemetry/collectors/sandbox_telemetry_parse.sh   # if present
```

## 2. Skim latest artifacts

```bash
ls -lt /workspace/grokbot-telemetry/DATA/*_latest.md 2>/dev/null
# then skim:
#   DATA/exec_daemon_latest.md
#   DATA/cli_inventory_latest.md
#   DATA/sandbox_telemetry_latest.md
#   DATA/cdp_display_map_latest.md
```

## 3. Update living docs if evidence changed

- `TOOL_CATALOG.md` — new CLIs / version deltas
- `PROCESS_MAP.md` — PID / display / agent map
- `ARCHITECTURE.md` — only when mechanism evidence changes
- Append `SESSION_LOG/` and `ACTION_TRACE/` for material findings

## 4. Verify + publish

```bash
/workspace/grokbot-telemetry/verify.sh
/workspace/grokbot-telemetry/collectors/git_sync.sh
```

`git_sync.sh` commits safe paths and pushes when `gh` CLI is authenticated; otherwise notes MCP `push_files` path.

## Privacy

Never dump tokens, cookies, `auth.json`, OTP, or `/workspace/secrets/*` contents into docs or git.
