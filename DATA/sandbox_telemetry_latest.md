# sandbox_telemetry_parse — 2026-10-30 19:49:14 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1294581 lines=3688
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2453 |
| `chrome_profile_sample` | 813 |
| `egress_tunnel_connect` | 306 |
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
| `chromeBrowserPssKb` | {'int': 2453} |
| `chromeGpuPssKb` | {'int': 2453} |
| `chromeOtherPssKb` | {'int': 2453} |
| `chromeProcesses` | {'int': 2453} |
| `chromeProfiles` | {'int': 2453} |
| `chromeRendererMaxPssKb` | {'int': 2453} |
| `chromeRendererPssKb` | {'int': 2453} |
| `chromeRenderers` | {'int': 2453} |
| `chromeTabs` | {'int': 2453} |
| `chromeTabsProbedProfiles` | {'int': 2453} |
| `chromeUtilityPssKb` | {'int': 2453} |
| `desktopPssKb` | {'int': 2453} |
| `hostPssKb` | {'int': 2453} |
| `kind` | {'str': 2453} |
| `memAvailableKb` | {'int': 2453} |
| `memTotalKb` | {'int': 2453} |
| `otherPssKb` | {'int': 2453} |
| `processes` | {'int': 2453} |
| `pssFallbackProcesses` | {'int': 2453} |

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
| `cpuMillicores` | {'int': 803} |
| `display` | {'int': 813} |
| `kind` | {'str': 813} |
| `processes` | {'int': 813} |
| `pssKb` | {'int': 813} |
| `rendererMaxPssKb` | {'int': 813} |
| `renderers` | {'int': 813} |
| `tabs` | {'int': 805} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 306} |
| `failClosed` | {'bool': 306} |
| `kind` | {'str': 306} |
| `route` | {'str': 306} |
| `strict` | {'bool': 306} |

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
