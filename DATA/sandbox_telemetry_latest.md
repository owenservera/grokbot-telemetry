# sandbox_telemetry_parse — 2026-10-30 19:40:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1286563 lines=3653
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2444 |
| `chrome_profile_sample` | 795 |
| `egress_tunnel_connect` | 298 |
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
| `chromeBrowserPssKb` | {'int': 2444} |
| `chromeGpuPssKb` | {'int': 2444} |
| `chromeOtherPssKb` | {'int': 2444} |
| `chromeProcesses` | {'int': 2444} |
| `chromeProfiles` | {'int': 2444} |
| `chromeRendererMaxPssKb` | {'int': 2444} |
| `chromeRendererPssKb` | {'int': 2444} |
| `chromeRenderers` | {'int': 2444} |
| `chromeTabs` | {'int': 2444} |
| `chromeTabsProbedProfiles` | {'int': 2444} |
| `chromeUtilityPssKb` | {'int': 2444} |
| `desktopPssKb` | {'int': 2444} |
| `hostPssKb` | {'int': 2444} |
| `kind` | {'str': 2444} |
| `memAvailableKb` | {'int': 2444} |
| `memTotalKb` | {'int': 2444} |
| `otherPssKb` | {'int': 2444} |
| `processes` | {'int': 2444} |
| `pssFallbackProcesses` | {'int': 2444} |

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
| `cpuMillicores` | {'int': 785} |
| `display` | {'int': 795} |
| `kind` | {'str': 795} |
| `processes` | {'int': 795} |
| `pssKb` | {'int': 795} |
| `rendererMaxPssKb` | {'int': 795} |
| `renderers` | {'int': 795} |
| `tabs` | {'int': 787} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 298} |
| `failClosed` | {'bool': 298} |
| `kind` | {'str': 298} |
| `route` | {'str': 298} |
| `strict` | {'bool': 298} |

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
