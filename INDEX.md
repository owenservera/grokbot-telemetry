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
| [README.md](./README.md) | Clone / privacy / continuous updates |
| [verify.sh](./verify.sh) | Health check |

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
- `DATA/exec_daemon_latest.jsonl`
- `DATA/sandbox_telemetry_latest.json` / `DATA/cdp_display_map_latest.json`

## Privacy

Never dump tokens, cookies, auth.json, OTP, secrets CSV, gateway/box/host-secrets. Redact argv secrets in collectors. Never write window-assignment tokens.
