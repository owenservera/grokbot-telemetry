# sandbox_telemetry_parse — 2026-10-29 19:59:18 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=584074 lines=1591
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1154 |
| `chrome_profile_sample` | 254 |
| `egress_tunnel_connect` | 89 |
| `egress_tunnel_desktop` | 75 |
| `chrome_launch` | 6 |
| `egress_time_zone` | 6 |
| `boot_stage` | 3 |
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
| `chromeBrowserPssKb` | {'int': 1154} |
| `chromeGpuPssKb` | {'int': 1154} |
| `chromeOtherPssKb` | {'int': 1154} |
| `chromeProcesses` | {'int': 1154} |
| `chromeProfiles` | {'int': 1154} |
| `chromeRendererMaxPssKb` | {'int': 1154} |
| `chromeRendererPssKb` | {'int': 1154} |
| `chromeRenderers` | {'int': 1154} |
| `chromeTabs` | {'int': 1154} |
| `chromeTabsProbedProfiles` | {'int': 1154} |
| `chromeUtilityPssKb` | {'int': 1154} |
| `desktopPssKb` | {'int': 1154} |
| `hostPssKb` | {'int': 1154} |
| `kind` | {'str': 1154} |
| `memAvailableKb` | {'int': 1154} |
| `memTotalKb` | {'int': 1154} |
| `otherPssKb` | {'int': 1154} |
| `processes` | {'int': 1154} |
| `pssFallbackProcesses` | {'int': 1154} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 75} |
| `graceS` | {'int': 42} |
| `kind` | {'str': 75} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 6} |
| `display` | {'int': 6} |
| `durationMs` | {'int': 6} |
| `kind` | {'str': 6} |
| `launcher` | {'int': 6} |
| `launcherSource` | {'str': 6} |
| `mode` | {'str': 6} |
| `outcome` | {'str': 6} |

### `egress_time_zone`

| key | types |
|-----|-------|
| `boxClockUtc` | {'bool': 6} |
| `kind` | {'str': 6} |
| `outcome` | {'str': 6} |
| `provider` | {'str': 6} |
| `source` | {'str': 6} |

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
| `cpuMillicores` | {'int': 248} |
| `display` | {'int': 254} |
| `kind` | {'str': 254} |
| `processes` | {'int': 254} |
| `pssKb` | {'int': 254} |
| `rendererMaxPssKb` | {'int': 254} |
| `renderers` | {'int': 254} |
| `tabs` | {'int': 254} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 89} |
| `failClosed` | {'bool': 89} |
| `kind` | {'str': 89} |
| `route` | {'str': 89} |
| `strict` | {'bool': 89} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
