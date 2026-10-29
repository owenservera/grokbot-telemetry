# sandbox_telemetry_parse — 2026-10-29 14:42:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=423382 lines=1098
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 861 |
| `chrome_profile_sample` | 142 |
| `egress_tunnel_desktop` | 41 |
| `egress_tunnel_connect` | 41 |
| `boot_stage` | 3 |
| `chrome_launch` | 3 |
| `egress_time_zone` | 3 |
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
| `chromeBrowserPssKb` | {'int': 861} |
| `chromeGpuPssKb` | {'int': 861} |
| `chromeOtherPssKb` | {'int': 861} |
| `chromeProcesses` | {'int': 861} |
| `chromeProfiles` | {'int': 861} |
| `chromeRendererMaxPssKb` | {'int': 861} |
| `chromeRendererPssKb` | {'int': 861} |
| `chromeRenderers` | {'int': 861} |
| `chromeTabs` | {'int': 861} |
| `chromeTabsProbedProfiles` | {'int': 861} |
| `chromeUtilityPssKb` | {'int': 861} |
| `desktopPssKb` | {'int': 861} |
| `hostPssKb` | {'int': 861} |
| `kind` | {'str': 861} |
| `memAvailableKb` | {'int': 861} |
| `memTotalKb` | {'int': 861} |
| `otherPssKb` | {'int': 861} |
| `processes` | {'int': 861} |
| `pssFallbackProcesses` | {'int': 861} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 41} |
| `graceS` | {'int': 23} |
| `kind` | {'str': 41} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `display` | {'int': 3} |
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `launcher` | {'int': 3} |
| `launcherSource` | {'str': 3} |
| `mode` | {'str': 3} |
| `outcome` | {'str': 3} |

### `egress_time_zone`

| key | types |
|-----|-------|
| `boxClockUtc` | {'bool': 3} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `provider` | {'str': 3} |
| `source` | {'str': 3} |

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
| `cpuMillicores` | {'int': 139} |
| `display` | {'int': 142} |
| `kind` | {'str': 142} |
| `processes` | {'int': 142} |
| `pssKb` | {'int': 142} |
| `rendererMaxPssKb` | {'int': 142} |
| `renderers` | {'int': 142} |
| `tabs` | {'int': 142} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 41} |
| `failClosed` | {'bool': 41} |
| `kind` | {'str': 41} |
| `route` | {'str': 41} |
| `strict` | {'bool': 41} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
