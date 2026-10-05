# sand-box-telemetry.log kinds (safe schema)

Source file: `/tmp/sand-box-telemetry.log` (platform JSONL).  
Documented by Collector 3 — **values for sensitive keys omitted**.

| kind | keys (types) |
|------|----------------|
| boot_stage | kind(str), stage(str), durationMs(int) |
| egress_tunnel | kind, outcome(str), attempt(int) |
| host_boot_fetch | kind, outcome, reason, durationMs, swapMs, fromVersion(str), toVersion(str) |
| memory_sample | kind + many *Kb / chrome* count ints (see DATA/sandbox_telemetry_latest.md) |
| chrome_profile_sample | kind, display(int), processes, pssKb, renderers, rendererMaxPssKb, tabs, cpuMillicores? |
| chrome_launch | kind, display, mode, attempt, outcome, durationMs |
| cookie_persist | kind, phase, outcome, seedCookies(**REDACT value**), optional injected/missingAfter/attempts |

Refresh via `collectors/sandbox_telemetry_parse.sh`.
