# sandbox_telemetry_parse — 2026-10-30 19:02:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1253556 lines=3514
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2406 |
| `chrome_profile_sample` | 719 |
| `egress_tunnel_connect` | 275 |
| `egress_tunnel_desktop` | 86 |
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
| `chromeBrowserPssKb` | {'int': 2406} |
| `chromeGpuPssKb` | {'int': 2406} |
| `chromeOtherPssKb` | {'int': 2406} |
| `chromeProcesses` | {'int': 2406} |
| `chromeProfiles` | {'int': 2406} |
| `chromeRendererMaxPssKb` | {'int': 2406} |
| `chromeRendererPssKb` | {'int': 2406} |
| `chromeRenderers` | {'int': 2406} |
| `chromeTabs` | {'int': 2406} |
| `chromeTabsProbedProfiles` | {'int': 2406} |
| `chromeUtilityPssKb` | {'int': 2406} |
| `desktopPssKb` | {'int': 2406} |
| `hostPssKb` | {'int': 2406} |
| `kind` | {'str': 2406} |
| `memAvailableKb` | {'int': 2406} |
| `memTotalKb` | {'int': 2406} |
| `otherPssKb` | {'int': 2406} |
| `processes` | {'int': 2406} |
| `pssFallbackProcesses` | {'int': 2406} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 86} |
| `graceS` | {'int': 49} |
| `kind` | {'str': 86} |

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
| `cpuMillicores` | {'int': 709} |
| `display` | {'int': 719} |
| `kind` | {'str': 719} |
| `processes` | {'int': 719} |
| `pssKb` | {'int': 719} |
| `rendererMaxPssKb` | {'int': 719} |
| `renderers` | {'int': 719} |
| `tabs` | {'int': 711} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 275} |
| `failClosed` | {'bool': 275} |
| `kind` | {'str': 275} |
| `route` | {'str': 275} |
| `strict` | {'bool': 275} |

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
