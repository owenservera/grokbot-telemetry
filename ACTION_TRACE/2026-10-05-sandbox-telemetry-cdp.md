# ACTION_TRACE — 2026-10-05 sandbox telemetry parse + CDP map (Collector 3)

**Time:** 2026-10-05 ~17:06–17:07 CEST  
**Agent:** TELEMETRY-MASTER / DISPLAY `:3`  
**Script:** `collectors/sandbox_telemetry_parse.sh`

## Intent

Safe schema extraction from `/tmp/sand-box-telemetry.log` + correlate CDP ports to chrome-profile forks, Xvfb displays, agents, and sand-playwright workers.

## Log schema (safe)

- Format: **JSON Lines**, one object per line (`kind` discriminator).
- Snapshot ~17:07 CEST: **213 lines / ~67KB** (growing).

| kind | count | Notable keys (types) |
|------|------:|----------------------|
| memory_sample | 113 | mem*Kb, chrome*PssKb/counts, processes (all int) |
| chrome_profile_sample | 90 | display(int), pssKb, renderers, tabs, cpuMillicores |
| boot_stage | 3 | stage(str), durationMs |
| chrome_launch | 3 | display, mode, attempt, outcome, durationMs |
| cookie_persist | 2 | phase, outcome, **seedCookies** (value omitted; type int count in log) |
| egress_tunnel | 1 | outcome, attempt |
| host_boot_fetch | 1 | fromVersion/toVersion short hashes, durationMs |

**Redaction:** never copy cookie/token payloads; `seedCookies` and secret-named keys → type/seen only.

## CDP ↔ Fork ↔ display (live)

**Formula:** `CDP_port = 9222 + N` for `:N` / `Fork-N`.

| CDP | Display | Fork | Agent | Playwright |
|-----|---------|------|-------|------------|
| 9224 | :2 | Fork-2 | VOMEGA-MASTER | yes |
| 9225 | :3 | Fork-3 | TELEMETRY-MASTER | no |
| 9226 | :4 | Fork-4 | AUTH-MASTER | yes |
| 9227 | :5 | Fork-5 | Daintree Master | yes |

Xvfb also live on `:1`, `:6`, `:7` without chrome Fork dirs yet (disk only Fork-2..5).

computerUse path: base exec-daemon 1337 hosts sand-playwright → CDP of agent chrome.

## Artifacts

- `collectors/sandbox_telemetry_parse.sh`
- `DATA/sandbox_telemetry_latest.{json,md}`
- `DATA/cdp_display_map_latest.{json,md}`
- `DIFFS/20261005-170702-sandbox-telemetry-summary.md`
- Docs: COLLECTORS, INDEX, PROCESS_MAP, ARCHITECTURE

## Git note

Repo `owenservera/grokbot-telemetry` may be synced by another executor — docs left ready; no git lock contended this turn.
