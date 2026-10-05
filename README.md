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
