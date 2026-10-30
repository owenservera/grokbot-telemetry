# sandbox_telemetry_parse — 2026-10-30 19:07:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1258690 lines=3535
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2412 |
| `chrome_profile_sample` | 731 |
| `egress_tunnel_connect` | 278 |
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
| `chromeBrowserPssKb` | {'int': 2412} |
| `chromeGpuPssKb` | {'int': 2412} |
| `chromeOtherPssKb` | {'int': 2412} |
| `chromeProcesses` | {'int': 2412} |
| `chromeProfiles` | {'int': 2412} |
| `chromeRendererMaxPssKb` | {'int': 2412} |
| `chromeRendererPssKb` | {'int': 2412} |
| `chromeRenderers` | {'int': 2412} |
| `chromeTabs` | {'int': 2412} |
| `chromeTabsProbedProfiles` | {'int': 2412} |
| `chromeUtilityPssKb` | {'int': 2412} |
| `desktopPssKb` | {'int': 2412} |
| `hostPssKb` | {'int': 2412} |
| `kind` | {'str': 2412} |
| `memAvailableKb` | {'int': 2412} |
| `memTotalKb` | {'int': 2412} |
| `otherPssKb` | {'int': 2412} |
| `processes` | {'int': 2412} |
| `pssFallbackProcesses` | {'int': 2412} |

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
| `cpuMillicores` | {'int': 721} |
| `display` | {'int': 731} |
| `kind` | {'str': 731} |
| `processes` | {'int': 731} |
| `pssKb` | {'int': 731} |
| `rendererMaxPssKb` | {'int': 731} |
| `renderers` | {'int': 731} |
| `tabs` | {'int': 723} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 278} |
| `failClosed` | {'bool': 278} |
| `kind` | {'str': 278} |
| `route` | {'str': 278} |
| `strict` | {'bool': 278} |

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
