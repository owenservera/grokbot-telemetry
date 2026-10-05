# Grok Bot Telemetry — INDEX

**Updated:** 2026-10-05 17:08 CEST (Europe/Paris)

| Field | Value |
|-------|-------|
| Workspace | `/workspace/grokbot-telemetry/` |
| GitHub mirror | <https://github.com/owenservera/grokbot-telemetry> |
| This agent | TELEMETRY-MASTER (`c873572d-…`) / DISPLAY `:3` |
| Host | `grok-bot-vm-3707809` |

## Map

| Path | Purpose |
|------|---------|
| [ARCHITECTURE.md](./ARCHITECTURE.md) | Box vs desktop vs connectors vs CLIs |
| [TOOL_CATALOG.md](./TOOL_CATALOG.md) | Live CLI inventory |
| [PROCESS_MAP.md](./PROCESS_MAP.md) | PID ↔ exec-daemon ↔ display ↔ agent |
| [COLLECTORS.md](./COLLECTORS.md) | Collector designs + status |
| [collectors/](./collectors/) | Runnable collectors |
| [DATA/](./DATA/) | JSONL/MD snapshots from collectors |
| [SESSION_LOG/](./SESSION_LOG/) | Dated dossiers |
| [ACTION_TRACE/](./ACTION_TRACE/) | Significant action streams |
| [DIFFS/](./DIFFS/) | FS inventory snapshots |
| [SCHEMAS/](./SCHEMAS/) | Event JSON schemas |
| [WAKE.md](./WAKE.md) | On-wake checklist (run_all + skim latest) |
| [README.md](./README.md) | Clone / privacy / continuous updates |
| [verify.sh](./verify.sh) | Health check |
| [collectors/always_on.sh](./collectors/always_on.sh) | Always-on daemon (5m loop + push) |

## Collectors

| # | Script | Status |
|---|--------|--------|
| 1 | `collectors/exec_daemon_sample.sh` | **live** — Shell/exec-daemon correlator |
| 2 | `collectors/cli_inventory.sh` | skeleton — safe CLI inventory |
| 3 | `collectors/sandbox_telemetry_parse.sh` | **live** — log schema + CDP map |
| — | `collectors/run_all.sh` | **live** — runs 1→2→3; fail-any |

## Latest traces

- [SESSION_LOG/2026-10-05-baseline.md](./SESSION_LOG/2026-10-05-baseline.md) (includes Collector 1 continuity)
- [ACTION_TRACE/2026-10-05-first-baseline.md](./ACTION_TRACE/2026-10-05-first-baseline.md)
- [ACTION_TRACE/2026-10-05-exec-daemon-correlator.md](./ACTION_TRACE/2026-10-05-exec-daemon-correlator.md)
- [ACTION_TRACE/2026-10-05-sandbox-telemetry-cdp.md](./ACTION_TRACE/2026-10-05-sandbox-telemetry-cdp.md)
- [ACTION_TRACE/2026-10-05-daintree-peer-handoff.md](./ACTION_TRACE/2026-10-05-daintree-peer-handoff.md)
- [SESSION_LOG/2026-10-05-wake-1745.md](./SESSION_LOG/2026-10-05-wake-1745.md) (15 daemons, collector display fix, first chrome process_crash)
- [ACTION_TRACE/2026-10-05-wake-1745-collector-fix.md](./ACTION_TRACE/2026-10-05-wake-1745-collector-fix.md)
- [SESSION_LOG/2026-10-05-wake-1818.md](./SESSION_LOG/2026-10-05-wake-1818.md) (17 daemons, duplicate "Daintree Master" name, Fork-16 Playwright in bwrap)
- [ACTION_TRACE/2026-10-05-wake-1818.md](./ACTION_TRACE/2026-10-05-wake-1818.md)
- [SESSION_LOG/2026-10-05-wake-1837.md](./SESSION_LOG/2026-10-05-wake-1837.md) (18 daemons, new :18 Grock.Coms)
- [ACTION_TRACE/2026-10-05-wake-1837.md](./ACTION_TRACE/2026-10-05-wake-1837.md)
- `DATA/exec_daemon_latest.jsonl`
- `DATA/sandbox_telemetry_latest.json` / `DATA/cdp_display_map_latest.json`

## Privacy

Never dump tokens, cookies, auth.json, OTP, secrets CSV, gateway/box/host-secrets. Redact argv secrets in collectors. Never write window-assignment tokens.

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
