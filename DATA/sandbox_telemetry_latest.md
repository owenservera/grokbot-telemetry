# sandbox_telemetry_parse — 2026-10-30 20:15:13 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1317514 lines=3787
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2479 |
| `chrome_profile_sample` | 865 |
| `egress_tunnel_connect` | 326 |
| `egress_tunnel_desktop` | 89 |
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
| `chromeBrowserPssKb` | {'int': 2479} |
| `chromeGpuPssKb` | {'int': 2479} |
| `chromeOtherPssKb` | {'int': 2479} |
| `chromeProcesses` | {'int': 2479} |
| `chromeProfiles` | {'int': 2479} |
| `chromeRendererMaxPssKb` | {'int': 2479} |
| `chromeRendererPssKb` | {'int': 2479} |
| `chromeRenderers` | {'int': 2479} |
| `chromeTabs` | {'int': 2479} |
| `chromeTabsProbedProfiles` | {'int': 2479} |
| `chromeUtilityPssKb` | {'int': 2479} |
| `desktopPssKb` | {'int': 2479} |
| `hostPssKb` | {'int': 2479} |
| `kind` | {'str': 2479} |
| `memAvailableKb` | {'int': 2479} |
| `memTotalKb` | {'int': 2479} |
| `otherPssKb` | {'int': 2479} |
| `processes` | {'int': 2479} |
| `pssFallbackProcesses` | {'int': 2479} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 89} |
| `graceS` | {'int': 51} |
| `kind` | {'str': 89} |

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
| `cpuMillicores` | {'int': 855} |
| `display` | {'int': 865} |
| `kind` | {'str': 865} |
| `processes` | {'int': 865} |
| `pssKb` | {'int': 865} |
| `rendererMaxPssKb` | {'int': 865} |
| `renderers` | {'int': 865} |
| `tabs` | {'int': 857} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 326} |
| `failClosed` | {'bool': 326} |
| `kind` | {'str': 326} |
| `route` | {'str': 326} |
| `strict` | {'bool': 326} |

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
