# sandbox_telemetry_parse — 2026-10-30 21:11:21 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1363373 lines=3991
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2530 |
| `chrome_profile_sample` | 967 |
| `egress_tunnel_connect` | 371 |
| `egress_tunnel_desktop` | 95 |
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
| `chromeBrowserPssKb` | {'int': 2530} |
| `chromeGpuPssKb` | {'int': 2530} |
| `chromeOtherPssKb` | {'int': 2530} |
| `chromeProcesses` | {'int': 2530} |
| `chromeProfiles` | {'int': 2530} |
| `chromeRendererMaxPssKb` | {'int': 2530} |
| `chromeRendererPssKb` | {'int': 2530} |
| `chromeRenderers` | {'int': 2530} |
| `chromeTabs` | {'int': 2530} |
| `chromeTabsProbedProfiles` | {'int': 2530} |
| `chromeUtilityPssKb` | {'int': 2530} |
| `desktopPssKb` | {'int': 2530} |
| `hostPssKb` | {'int': 2530} |
| `kind` | {'str': 2530} |
| `memAvailableKb` | {'int': 2530} |
| `memTotalKb` | {'int': 2530} |
| `otherPssKb` | {'int': 2530} |
| `processes` | {'int': 2530} |
| `pssFallbackProcesses` | {'int': 2530} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 95} |
| `graceS` | {'int': 54} |
| `kind` | {'str': 95} |

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
| `cpuMillicores` | {'int': 957} |
| `display` | {'int': 967} |
| `kind` | {'str': 967} |
| `processes` | {'int': 967} |
| `pssKb` | {'int': 967} |
| `rendererMaxPssKb` | {'int': 967} |
| `renderers` | {'int': 967} |
| `tabs` | {'int': 959} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 371} |
| `failClosed` | {'bool': 371} |
| `kind` | {'str': 371} |
| `route` | {'str': 371} |
| `strict` | {'bool': 371} |

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
