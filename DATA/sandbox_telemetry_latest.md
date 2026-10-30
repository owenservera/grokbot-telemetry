# sandbox_telemetry_parse — 2026-10-30 20:40:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1339906 lines=3885
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2504 |
| `chrome_profile_sample` | 915 |
| `egress_tunnel_connect` | 349 |
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
| `chromeBrowserPssKb` | {'int': 2504} |
| `chromeGpuPssKb` | {'int': 2504} |
| `chromeOtherPssKb` | {'int': 2504} |
| `chromeProcesses` | {'int': 2504} |
| `chromeProfiles` | {'int': 2504} |
| `chromeRendererMaxPssKb` | {'int': 2504} |
| `chromeRendererPssKb` | {'int': 2504} |
| `chromeRenderers` | {'int': 2504} |
| `chromeTabs` | {'int': 2504} |
| `chromeTabsProbedProfiles` | {'int': 2504} |
| `chromeUtilityPssKb` | {'int': 2504} |
| `desktopPssKb` | {'int': 2504} |
| `hostPssKb` | {'int': 2504} |
| `kind` | {'str': 2504} |
| `memAvailableKb` | {'int': 2504} |
| `memTotalKb` | {'int': 2504} |
| `otherPssKb` | {'int': 2504} |
| `processes` | {'int': 2504} |
| `pssFallbackProcesses` | {'int': 2504} |

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
| `cpuMillicores` | {'int': 905} |
| `display` | {'int': 915} |
| `kind` | {'str': 915} |
| `processes` | {'int': 915} |
| `pssKb` | {'int': 915} |
| `rendererMaxPssKb` | {'int': 915} |
| `renderers` | {'int': 915} |
| `tabs` | {'int': 907} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 349} |
| `failClosed` | {'bool': 349} |
| `kind` | {'str': 349} |
| `route` | {'str': 349} |
| `strict` | {'bool': 349} |

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
