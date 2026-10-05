# COLLECTORS

## Status

| # | Name | Script | Status |
|---|------|--------|--------|
| 1 | Shell / exec-daemon correlator | `collectors/exec_daemon_sample.sh` | **IMPLEMENTED** — run → `DATA/exec_daemon_*.jsonl` |
| 2 | Safe CLI inventory | `collectors/cli_inventory.sh` | **SKELETON** — allowlist `--version`; never `daintree --version` |
| 3 | sand-box-telemetry.log + CDP map | `collectors/sandbox_telemetry_parse.sh` | **IMPLEMENTED** — safe schema + CDP↔Fork↔display |
| — | Orchestrator | `collectors/run_all.sh` | **IMPLEMENTED** — 1→2→3, non-zero on any failure |

## Collector 1 — exec_daemon_sample.sh

**What:** Finds `/exec-daemon/index.js serve --port …` PIDs, maps port→display (`1337`→`:1`, `1400N`→`:N`), joins `.sand-window-assignments.json` agent UUIDs (tokens never written), walks children depth≤6, emits JSONL + markdown summary.

**Redaction:** `--auth-token` / `--pty-auth-token` / api-key / bearer / JWT / long hex → `[REDACTED]`; long cmdlines truncated.

**Outputs:** `DATA/exec_daemon_<ts>.jsonl`, `DATA/exec_daemon_latest.jsonl`, `DATA/exec_daemon_latest.md`

**Gaps:** Does not yet attach chat-turn IDs; ephemeral Shell children may exit between samples — sample multiple times.

## Collector 2 — cli_inventory.sh (design + skeleton)

**What:** Allowlisted CLIs: `which` + `timeout 5 --version`. Explicitly skips launching `daintree --version` (record path + note only). Write JSONL for TOOL_CATALOG sync.

**Next:** Diff against TOOL_CATALOG versions; alert on new PATH entries under `.local/bin`.

## Collector 3 — sandbox_telemetry_parse.sh

**What:** Parse `/tmp/sand-box-telemetry.log` (JSONL) for **kind counts + key/type schema only**; build live **CDP ↔ Fork-N ↔ display ↔ agent ↔ playwright** table from `ps` + chrome-profile + window assignments (no tokens).

**Outputs:**
- `DATA/sandbox_telemetry_latest.json` + `.md`
- `DATA/cdp_display_map_latest.json` + `.md`
- `DIFFS/<ts>-sandbox-telemetry-summary.md`

**Observed kinds (2026-10-05):** `memory_sample`, `chrome_profile_sample`, `boot_stage`, `chrome_launch`, `cookie_persist`, `egress_tunnel`, `host_boot_fetch`.

**CDP formula (observed):** `CDP_port = 9222 + N` for display `:N` / `chrome-profile/Fork-N`.

**Privacy:** Keys matching cookie/token/secret/seedCookies → values omitted; only types/counts recorded. Assignment tokens never emitted.

**Next:** Optional incremental tail (byte offset) to avoid full-file rescans; join memory_sample chromeProfiles with live Fork count.

## Privacy standing rules

Never read: `auth.json`, `.credentials.json`, cookie seeds, `creds-export.csv`, `box-secrets.json`, `host-secrets.json`, `gateway.json` contents. Never emit window-assignment tokens.

## run_all.sh

```bash
/workspace/grokbot-telemetry/collectors/run_all.sh
# → DATA/run_all_latest.log + refreshes DATA/*_latest*
```

Order: `exec_daemon_sample` → `cli_inventory` → `sandbox_telemetry_parse`. Exits non-zero if any step fails or a script is missing/`+x`.
