# sandbox_telemetry_parse — 2026-10-30 19:12:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1262915 lines=3552
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2417 |
| `chrome_profile_sample` | 741 |
| `egress_tunnel_connect` | 280 |
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
| `chromeBrowserPssKb` | {'int': 2417} |
| `chromeGpuPssKb` | {'int': 2417} |
| `chromeOtherPssKb` | {'int': 2417} |
| `chromeProcesses` | {'int': 2417} |
| `chromeProfiles` | {'int': 2417} |
| `chromeRendererMaxPssKb` | {'int': 2417} |
| `chromeRendererPssKb` | {'int': 2417} |
| `chromeRenderers` | {'int': 2417} |
| `chromeTabs` | {'int': 2417} |
| `chromeTabsProbedProfiles` | {'int': 2417} |
| `chromeUtilityPssKb` | {'int': 2417} |
| `desktopPssKb` | {'int': 2417} |
| `hostPssKb` | {'int': 2417} |
| `kind` | {'str': 2417} |
| `memAvailableKb` | {'int': 2417} |
| `memTotalKb` | {'int': 2417} |
| `otherPssKb` | {'int': 2417} |
| `processes` | {'int': 2417} |
| `pssFallbackProcesses` | {'int': 2417} |

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
| `cpuMillicores` | {'int': 731} |
| `display` | {'int': 741} |
| `kind` | {'str': 741} |
| `processes` | {'int': 741} |
| `pssKb` | {'int': 741} |
| `rendererMaxPssKb` | {'int': 741} |
| `renderers` | {'int': 741} |
| `tabs` | {'int': 733} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 280} |
| `failClosed` | {'bool': 280} |
| `kind` | {'str': 280} |
| `route` | {'str': 280} |
| `strict` | {'bool': 280} |

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
