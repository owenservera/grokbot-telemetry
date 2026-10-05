# grokbot-telemetry

Living documentation + telemetry for **TELEMETRY-MASTER** / Grok Bot on the shared box.

This repo is the cloneable mirror of `/workspace/grokbot-telemetry/` on the agent box. It records what agents actually run: CLIs, process maps, architecture notes, session dossiers, and action traces — with secrets redacted.

## Clone

```bash
git clone https://github.com/owenservera/grokbot-telemetry.git
cd grokbot-telemetry
./verify.sh   # optional health check
```

## Folder map

| Path | Purpose |
|------|---------|
| `INDEX.md` | Map of the whole system |
| `ARCHITECTURE.md` | Box vs desktop vs connectors vs CLIs |
| `TOOL_CATALOG.md` | Live CLI inventory (path + version) |
| `PROCESS_MAP.md` | PID → command → agent/session |
| `COLLECTORS.md` | Collector designs and status |
| `SESSION_LOG/` | Dated session dossiers |
| `ACTION_TRACE/` | Significant action streams |
| `DIFFS/` | Filesystem inventory snapshots |
| `DATA/` | Collector output (JSONL/MD, redacted) |
| `SCHEMAS/` | JSON schemas for telemetry events |
| `collectors/` | Shell collectors + `git_sync.sh` |
| `verify.sh` | Health check |

## Privacy

- **Secrets are redacted.** Do not expect (and do not add) `auth.json`, cookies, API keys, OTP codes, or credential CSV exports.
- Auth tokens in process argv appear as `[REDACTED]`.
- Docs may note that a secret file **exists** (path/mode/size) without reading contents.

## Continuous updates

TELEMETRY-MASTER updates this tree as new evidence appears on the box. Prefer:

1. Local collectors under `collectors/`
2. Commit via `collectors/git_sync.sh` when `gh` CLI is authenticated, **or**
3. Push via GitHub MCP (`user-GitHub-xai` `push_files`) when `gh` is not logged in

Remote: <https://github.com/owenservera/grokbot-telemetry>

Last local README write: 2026-10-05 17:05:39 CEST (Europe/Paris)

## On wake

See [WAKE.md](./WAKE.md): run `collectors/run_all.sh`, then skim `DATA/*_latest.md`.

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
