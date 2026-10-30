# sandbox_telemetry_parse — 2026-10-30 19:37:16 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1283953 lines=3642
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2441 |
| `chrome_profile_sample` | 789 |
| `egress_tunnel_connect` | 296 |
| `egress_tunnel_desktop` | 88 |
| `chrome_launch` | 9 |
| `egress_time_zone` | 9 |
| `boot_stage` | 3 |
| `supervisor_restart` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 2441} |
| `chromeGpuPssKb` | {'int': 2441} |
| `chromeOtherPssKb` | {'int': 2441} |
| `chromeProcesses` | {'int': 2441} |
| `chromeProfiles` | {'int': 2441} |
| `chromeRendererMaxPssKb` | {'int': 2441} |
| `chromeRendererPssKb` | {'int': 2441} |
| `chromeRenderers` | {'int': 2441} |
| `chromeTabs` | {'int': 2441} |
| `chromeTabsProbedProfiles` | {'int': 2441} |
| `chromeUtilityPssKb` | {'int': 2441} |
| `desktopPssKb` | {'int': 2441} |
| `hostPssKb` | {'int': 2441} |
| `kind` | {'str': 2441} |
| `memAvailableKb` | {'int': 2441} |
| `memTotalKb` | {'int': 2441} |
| `otherPssKb` | {'int': 2441} |
| `processes` | {'int': 2441} |
| `pssFallbackProcesses` | {'int': 2441} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 88} |
| `graceS` | {'int': 51} |
| `kind` | {'str': 88} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 9} |
| `display` | {'int': 9} |
| `durationMs` | {'int': 9} |
| `kind` | {'str': 9} |
| `launcher` | {'int': 9} |
| `launcherSource` | {'str': 9} |
| `mode` | {'str': 9} |
| `outcome` | {'str': 9} |

### `egress_time_zone`

| key | types |
|-----|-------|
| `boxClockUtc` | {'bool': 9} |
| `kind` | {'str': 9} |
| `outcome` | {'str': 9} |
| `provider` | {'str': 9} |
| `source` | {'str': 9} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 779} |
| `display` | {'int': 789} |
| `kind` | {'str': 789} |
| `processes` | {'int': 789} |
| `pssKb` | {'int': 789} |
| `rendererMaxPssKb` | {'int': 789} |
| `renderers` | {'int': 789} |
| `tabs` | {'int': 781} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 296} |
| `failClosed` | {'bool': 296} |
| `kind` | {'str': 296} |
| `route` | {'str': 296} |
| `strict` | {'bool': 296} |

### `supervisor_restart`

| key | types |
|-----|-------|
| `at` | {'float': 3} |
| `cause` | {'str': 3} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 3} |
| `restartAttempt` | {'int': 3} |
| `runtimeS` | {'int': 3} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
