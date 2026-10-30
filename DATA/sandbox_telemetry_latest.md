# sandbox_telemetry_parse — 2026-10-30 20:55:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1351170 lines=3939
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2516 |
| `chrome_profile_sample` | 939 |
| `egress_tunnel_connect` | 363 |
| `egress_tunnel_desktop` | 93 |
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
| `chromeBrowserPssKb` | {'int': 2516} |
| `chromeGpuPssKb` | {'int': 2516} |
| `chromeOtherPssKb` | {'int': 2516} |
| `chromeProcesses` | {'int': 2516} |
| `chromeProfiles` | {'int': 2516} |
| `chromeRendererMaxPssKb` | {'int': 2516} |
| `chromeRendererPssKb` | {'int': 2516} |
| `chromeRenderers` | {'int': 2516} |
| `chromeTabs` | {'int': 2516} |
| `chromeTabsProbedProfiles` | {'int': 2516} |
| `chromeUtilityPssKb` | {'int': 2516} |
| `desktopPssKb` | {'int': 2516} |
| `hostPssKb` | {'int': 2516} |
| `kind` | {'str': 2516} |
| `memAvailableKb` | {'int': 2516} |
| `memTotalKb` | {'int': 2516} |
| `otherPssKb` | {'int': 2516} |
| `processes` | {'int': 2516} |
| `pssFallbackProcesses` | {'int': 2516} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 93} |
| `graceS` | {'int': 53} |
| `kind` | {'str': 93} |

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
| `cpuMillicores` | {'int': 929} |
| `display` | {'int': 939} |
| `kind` | {'str': 939} |
| `processes` | {'int': 939} |
| `pssKb` | {'int': 939} |
| `rendererMaxPssKb` | {'int': 939} |
| `renderers` | {'int': 939} |
| `tabs` | {'int': 931} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 363} |
| `failClosed` | {'bool': 363} |
| `kind` | {'str': 363} |
| `route` | {'str': 363} |
| `strict` | {'bool': 363} |

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
