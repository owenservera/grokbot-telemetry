# WAKE — on-wake checklist (TELEMETRY-MASTER)

Run this at the start of every wake / sync turn.

## 0. Ensure always-on daemon is running

```bash
/workspace/grokbot-telemetry/collectors/always_on_ctl.sh status || /workspace/grokbot-telemetry/collectors/always_on_ctl.sh start
```

The daemon already runs collectors + git_sync every 5 min; steps 1–4 below are for manual/extra passes.

## Always-on box daemon (Owen order, 2026-10-06)

Linux observability runs **continuously on the box**, independent of Grok Bot chat wakes.

| Item | Value |
|------|-------|
| Daemon | `collectors/always_on.sh` (loop: `run_all.sh` → `git_sync.sh` → sleep **300s**) |
| Control | `collectors/always_on_ctl.sh start|stop|status|restart` |
| PID file | `DATA/always_on.pid` (single instance via `flock` on `DATA/.always_on.lock`) |
| Log | `DATA/always_on.log` (rotates at 5 MiB → `.log.1`; local only, not pushed) |
| Started via | `setsid nohup` (no systemd on this box; PID 1 = `tini`) |
| Master repo | **https://github.com/owenservera/grokbot-telemetry** — auto commit + push every 5 min |
| Survives | chat turns / agent exits. **Not** a box reboot → re-run `always_on_ctl.sh start` on wake |

Check: `collectors/always_on_ctl.sh status` · Stop: `collectors/always_on_ctl.sh stop`

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
