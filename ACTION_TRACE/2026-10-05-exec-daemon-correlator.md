# ACTION_TRACE — 2026-10-05 exec-daemon correlator (Collector 1)

**Started:** 2026-10-05 ~17:03 CEST  
**Agent:** TELEMETRY-MASTER / DISPLAY `:3`  
**Script:** `collectors/exec_daemon_sample.sh`

## Intent

Correlate Shell/tool activity to concrete exec-daemon PIDs, ports, displays, and child process trees — with argv redaction.

## What ran

| Step | Result |
|------|--------|
| Discover `/exec-daemon/index.js serve --port` | 6 daemons |
| Write + fix collector (empty assoc key; JSON emit off-by-one) | OK |
| Samples | `DATA/exec_daemon_20261005-170424.jsonl`, `…170436.jsonl`, `…170445.jsonl`, `…1705*.jsonl` (latest symlink/copy) |
| Dual sample ~10–12s apart | Confirmed ephemeral Shell children |

## Key evidence (latest good sample ~17:04:45 CEST)

### Daemons

| PID | Port | PTY | Display map | Agent (assignments) | PPID | cwd |
|-----|------|-----|-------------|---------------------|------|-----|
| 362 | 1337 | 1338 | `:1` (base) | *(none assigned)* | 357 (`start-exec-daemon`) | `/workspace` |
| 17990 | 14002 | 13602 | `:2` | VOMEGA-MASTER | 53 | `/workspace` |
| 73037 | 14003 | 13603 | `:3` | TELEMETRY-MASTER | 53 | `/workspace` |
| 97692 | 14004 | 13604 | `:4` | AUTH-MASTER | 53 | `/workspace` |
| 101839 | 14005 | 13605 | `:5` | Daintree Master | 53 | `/workspace` |
| 108128 | 14006 | 13606 | `:6` | Research Master | 53 | `/workspace` |

`--auth-token` / `--pty-auth-token` values → `[REDACTED]` in JSONL.

### Child patterns

1. **Shell tool** = direct child of agent exec-daemon:  
   `/usr/bin/bash -O extglob -c snap=$(command cat <&3) && … eval "$1" … dump_bash_state`  
   Observed under `:3` (TELEMETRY) and `:4` (AUTH-MASTER → `gh auth login --web …`).
2. **Base daemon 1337** hosts **sand-playwright-runtime** main.js workers → `bwrap` → worker.js, CDP endpoints `127.0.0.1:9224/9226/9227` (computerUse / browser automation plane — shared, not per-agent-exec-daemon children).
3. Idle agent daemons (`:2`, `:5`, `:6`) often show **0 children** between Shell calls (ephemeral).

## Gaps

- No chat-turn / tool-call ID on processes (needs exec-daemon logs or wrapper env).
- Port `1337` labeled display `:1` by convention; no agent UUID mapped to display 1 in assignments.
- Runtime Master / Code Master / MIRROR-MASTER / Grok Bot / Android Setup lack display assignment at this snapshot.
- Playwright workers parented under base daemon, not under 1400x agent daemons — correlating computerUse to agent requires CDP port ↔ chrome Fork ↔ display map (partially known).

## Artifacts

- `collectors/exec_daemon_sample.sh`
- `DATA/exec_daemon_latest.jsonl` + `.md`
- This ACTION_TRACE

## Later sample (~17:05:46)

- Daemon count grew to **8** pgrep hits: added **14007** / `:7` / MIRROR-MASTER (pid 153667).
- Extra pgrep hit pid 157680 lacked parseable `--port` (inspect cmdline on refresh; may be transient).
