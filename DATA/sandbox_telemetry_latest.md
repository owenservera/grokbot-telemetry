# sandbox_telemetry_parse — 2026-10-30 21:46:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1390502 lines=4113
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2560 |
| `chrome_profile_sample` | 1027 |
| `egress_tunnel_connect` | 398 |
| `egress_tunnel_desktop` | 100 |
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
| `chromeBrowserPssKb` | {'int': 2560} |
| `chromeGpuPssKb` | {'int': 2560} |
| `chromeOtherPssKb` | {'int': 2560} |
| `chromeProcesses` | {'int': 2560} |
| `chromeProfiles` | {'int': 2560} |
| `chromeRendererMaxPssKb` | {'int': 2560} |
| `chromeRendererPssKb` | {'int': 2560} |
| `chromeRenderers` | {'int': 2560} |
| `chromeTabs` | {'int': 2560} |
| `chromeTabsProbedProfiles` | {'int': 2560} |
| `chromeUtilityPssKb` | {'int': 2560} |
| `desktopPssKb` | {'int': 2560} |
| `hostPssKb` | {'int': 2560} |
| `kind` | {'str': 2560} |
| `memAvailableKb` | {'int': 2560} |
| `memTotalKb` | {'int': 2560} |
| `otherPssKb` | {'int': 2560} |
| `processes` | {'int': 2560} |
| `pssFallbackProcesses` | {'int': 2560} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 100} |
| `graceS` | {'int': 57} |
| `kind` | {'str': 100} |

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
| `cpuMillicores` | {'int': 1017} |
| `display` | {'int': 1027} |
| `kind` | {'str': 1027} |
| `processes` | {'int': 1027} |
| `pssKb` | {'int': 1027} |
| `rendererMaxPssKb` | {'int': 1027} |
| `renderers` | {'int': 1027} |
| `tabs` | {'int': 1019} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 398} |
| `failClosed` | {'bool': 398} |
| `kind` | {'str': 398} |
| `route` | {'str': 398} |
| `strict` | {'bool': 398} |

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
