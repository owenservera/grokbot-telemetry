# sandbox_telemetry_parse — 2026-10-30 18:43:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1236539 lines=3439
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2387 |
| `chrome_profile_sample` | 681 |
| `egress_tunnel_connect` | 258 |
| `egress_tunnel_desktop` | 85 |
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
| `chromeBrowserPssKb` | {'int': 2387} |
| `chromeGpuPssKb` | {'int': 2387} |
| `chromeOtherPssKb` | {'int': 2387} |
| `chromeProcesses` | {'int': 2387} |
| `chromeProfiles` | {'int': 2387} |
| `chromeRendererMaxPssKb` | {'int': 2387} |
| `chromeRendererPssKb` | {'int': 2387} |
| `chromeRenderers` | {'int': 2387} |
| `chromeTabs` | {'int': 2387} |
| `chromeTabsProbedProfiles` | {'int': 2387} |
| `chromeUtilityPssKb` | {'int': 2387} |
| `desktopPssKb` | {'int': 2387} |
| `hostPssKb` | {'int': 2387} |
| `kind` | {'str': 2387} |
| `memAvailableKb` | {'int': 2387} |
| `memTotalKb` | {'int': 2387} |
| `otherPssKb` | {'int': 2387} |
| `processes` | {'int': 2387} |
| `pssFallbackProcesses` | {'int': 2387} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 85} |
| `graceS` | {'int': 49} |
| `kind` | {'str': 85} |

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
| `cpuMillicores` | {'int': 671} |
| `display` | {'int': 681} |
| `kind` | {'str': 681} |
| `processes` | {'int': 681} |
| `pssKb` | {'int': 681} |
| `rendererMaxPssKb` | {'int': 681} |
| `renderers` | {'int': 681} |
| `tabs` | {'int': 673} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 258} |
| `failClosed` | {'bool': 258} |
| `kind` | {'str': 258} |
| `route` | {'str': 258} |
| `strict` | {'bool': 258} |

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
