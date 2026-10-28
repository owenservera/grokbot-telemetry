# sandbox_telemetry_parse — 2026-10-28 23:27:17 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=33311 lines=130
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 49 |
| `chrome_profile_sample` | 42 |
| `egress_tunnel_connect` | 19 |
| `egress_tunnel_desktop` | 11 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |
| `egress_time_zone` | 1 |

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
| `chromeBrowserPssKb` | {'int': 49} |
| `chromeGpuPssKb` | {'int': 49} |
| `chromeOtherPssKb` | {'int': 49} |
| `chromeProcesses` | {'int': 49} |
| `chromeProfiles` | {'int': 49} |
| `chromeRendererMaxPssKb` | {'int': 49} |
| `chromeRendererPssKb` | {'int': 49} |
| `chromeRenderers` | {'int': 49} |
| `chromeTabs` | {'int': 49} |
| `chromeTabsProbedProfiles` | {'int': 49} |
| `chromeUtilityPssKb` | {'int': 49} |
| `desktopPssKb` | {'int': 49} |
| `hostPssKb` | {'int': 49} |
| `kind` | {'str': 49} |
| `memAvailableKb` | {'int': 49} |
| `memTotalKb` | {'int': 49} |
| `otherPssKb` | {'int': 49} |
| `processes` | {'int': 49} |
| `pssFallbackProcesses` | {'int': 49} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 11} |
| `graceS` | {'int': 6} |
| `kind` | {'str': 11} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

### `egress_time_zone`

| key | types |
|-----|-------|
| `boxClockUtc` | {'bool': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `provider` | {'str': 1} |
| `source` | {'str': 1} |

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
| `cpuMillicores` | {'int': 41} |
| `display` | {'int': 42} |
| `kind` | {'str': 42} |
| `processes` | {'int': 42} |
| `pssKb` | {'int': 42} |
| `rendererMaxPssKb` | {'int': 42} |
| `renderers` | {'int': 42} |
| `tabs` | {'int': 42} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 19} |
| `failClosed` | {'bool': 19} |
| `kind` | {'str': 19} |
| `route` | {'str': 19} |
| `strict` | {'bool': 19} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
