# sandbox_telemetry_parse — 2026-10-30 20:47:32 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1343826 lines=3905
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2508 |
| `chrome_profile_sample` | 923 |
| `egress_tunnel_connect` | 355 |
| `egress_tunnel_desktop` | 91 |
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
| `chromeBrowserPssKb` | {'int': 2508} |
| `chromeGpuPssKb` | {'int': 2508} |
| `chromeOtherPssKb` | {'int': 2508} |
| `chromeProcesses` | {'int': 2508} |
| `chromeProfiles` | {'int': 2508} |
| `chromeRendererMaxPssKb` | {'int': 2508} |
| `chromeRendererPssKb` | {'int': 2508} |
| `chromeRenderers` | {'int': 2508} |
| `chromeTabs` | {'int': 2508} |
| `chromeTabsProbedProfiles` | {'int': 2508} |
| `chromeUtilityPssKb` | {'int': 2508} |
| `desktopPssKb` | {'int': 2508} |
| `hostPssKb` | {'int': 2508} |
| `kind` | {'str': 2508} |
| `memAvailableKb` | {'int': 2508} |
| `memTotalKb` | {'int': 2508} |
| `otherPssKb` | {'int': 2508} |
| `processes` | {'int': 2508} |
| `pssFallbackProcesses` | {'int': 2508} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 91} |
| `graceS` | {'int': 52} |
| `kind` | {'str': 91} |

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
| `cpuMillicores` | {'int': 913} |
| `display` | {'int': 923} |
| `kind` | {'str': 923} |
| `processes` | {'int': 923} |
| `pssKb` | {'int': 923} |
| `rendererMaxPssKb` | {'int': 923} |
| `renderers` | {'int': 923} |
| `tabs` | {'int': 915} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 355} |
| `failClosed` | {'bool': 355} |
| `kind` | {'str': 355} |
| `route` | {'str': 355} |
| `strict` | {'bool': 355} |

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
