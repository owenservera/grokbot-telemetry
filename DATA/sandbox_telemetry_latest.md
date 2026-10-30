# sandbox_telemetry_parse — 2026-10-30 20:36:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1336293 lines=3869
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2500 |
| `chrome_profile_sample` | 907 |
| `egress_tunnel_connect` | 345 |
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
| `chromeBrowserPssKb` | {'int': 2500} |
| `chromeGpuPssKb` | {'int': 2500} |
| `chromeOtherPssKb` | {'int': 2500} |
| `chromeProcesses` | {'int': 2500} |
| `chromeProfiles` | {'int': 2500} |
| `chromeRendererMaxPssKb` | {'int': 2500} |
| `chromeRendererPssKb` | {'int': 2500} |
| `chromeRenderers` | {'int': 2500} |
| `chromeTabs` | {'int': 2500} |
| `chromeTabsProbedProfiles` | {'int': 2500} |
| `chromeUtilityPssKb` | {'int': 2500} |
| `desktopPssKb` | {'int': 2500} |
| `hostPssKb` | {'int': 2500} |
| `kind` | {'str': 2500} |
| `memAvailableKb` | {'int': 2500} |
| `memTotalKb` | {'int': 2500} |
| `otherPssKb` | {'int': 2500} |
| `processes` | {'int': 2500} |
| `pssFallbackProcesses` | {'int': 2500} |

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
| `cpuMillicores` | {'int': 897} |
| `display` | {'int': 907} |
| `kind` | {'str': 907} |
| `processes` | {'int': 907} |
| `pssKb` | {'int': 907} |
| `rendererMaxPssKb` | {'int': 907} |
| `renderers` | {'int': 907} |
| `tabs` | {'int': 899} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 345} |
| `failClosed` | {'bool': 345} |
| `kind` | {'str': 345} |
| `route` | {'str': 345} |
| `strict` | {'bool': 345} |

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
