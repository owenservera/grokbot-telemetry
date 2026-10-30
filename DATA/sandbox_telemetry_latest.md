# sandbox_telemetry_parse — 2026-10-30 22:05:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1402442 lines=4169
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2573 |
| `chrome_profile_sample` | 1053 |
| `egress_tunnel_connect` | 410 |
| `egress_tunnel_desktop` | 105 |
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
| `chromeBrowserPssKb` | {'int': 2573} |
| `chromeGpuPssKb` | {'int': 2573} |
| `chromeOtherPssKb` | {'int': 2573} |
| `chromeProcesses` | {'int': 2573} |
| `chromeProfiles` | {'int': 2573} |
| `chromeRendererMaxPssKb` | {'int': 2573} |
| `chromeRendererPssKb` | {'int': 2573} |
| `chromeRenderers` | {'int': 2573} |
| `chromeTabs` | {'int': 2573} |
| `chromeTabsProbedProfiles` | {'int': 2573} |
| `chromeUtilityPssKb` | {'int': 2573} |
| `desktopPssKb` | {'int': 2573} |
| `hostPssKb` | {'int': 2573} |
| `kind` | {'str': 2573} |
| `memAvailableKb` | {'int': 2573} |
| `memTotalKb` | {'int': 2573} |
| `otherPssKb` | {'int': 2573} |
| `processes` | {'int': 2573} |
| `pssFallbackProcesses` | {'int': 2573} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 105} |
| `graceS` | {'int': 59} |
| `kind` | {'str': 105} |

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
| `cpuMillicores` | {'int': 1043} |
| `display` | {'int': 1053} |
| `kind` | {'str': 1053} |
| `processes` | {'int': 1053} |
| `pssKb` | {'int': 1053} |
| `rendererMaxPssKb` | {'int': 1053} |
| `renderers` | {'int': 1053} |
| `tabs` | {'int': 1045} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 410} |
| `failClosed` | {'bool': 410} |
| `kind` | {'str': 410} |
| `route` | {'str': 410} |
| `strict` | {'bool': 410} |

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
