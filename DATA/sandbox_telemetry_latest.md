# sandbox_telemetry_parse — 2026-10-30 11:17:37 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=983529 lines=2574
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1985 |
| `chrome_profile_sample` | 356 |
| `egress_tunnel_connect` | 134 |
| `egress_tunnel_desktop` | 78 |
| `chrome_launch` | 7 |
| `egress_time_zone` | 7 |
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
| `chromeBrowserPssKb` | {'int': 1985} |
| `chromeGpuPssKb` | {'int': 1985} |
| `chromeOtherPssKb` | {'int': 1985} |
| `chromeProcesses` | {'int': 1985} |
| `chromeProfiles` | {'int': 1985} |
| `chromeRendererMaxPssKb` | {'int': 1985} |
| `chromeRendererPssKb` | {'int': 1985} |
| `chromeRenderers` | {'int': 1985} |
| `chromeTabs` | {'int': 1985} |
| `chromeTabsProbedProfiles` | {'int': 1985} |
| `chromeUtilityPssKb` | {'int': 1985} |
| `desktopPssKb` | {'int': 1985} |
| `hostPssKb` | {'int': 1985} |
| `kind` | {'str': 1985} |
| `memAvailableKb` | {'int': 1985} |
| `memTotalKb` | {'int': 1985} |
| `otherPssKb` | {'int': 1985} |
| `processes` | {'int': 1985} |
| `pssFallbackProcesses` | {'int': 1985} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 78} |
| `graceS` | {'int': 44} |
| `kind` | {'str': 78} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 7} |
| `display` | {'int': 7} |
| `durationMs` | {'int': 7} |
| `kind` | {'str': 7} |
| `launcher` | {'int': 7} |
| `launcherSource` | {'str': 7} |
| `mode` | {'str': 7} |
| `outcome` | {'str': 7} |

### `egress_time_zone`

| key | types |
|-----|-------|
| `boxClockUtc` | {'bool': 7} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `provider` | {'str': 7} |
| `source` | {'str': 7} |

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
| `cpuMillicores` | {'int': 349} |
| `display` | {'int': 356} |
| `kind` | {'str': 356} |
| `processes` | {'int': 356} |
| `pssKb` | {'int': 356} |
| `rendererMaxPssKb` | {'int': 356} |
| `renderers` | {'int': 356} |
| `tabs` | {'int': 356} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 134} |
| `failClosed` | {'bool': 134} |
| `kind` | {'str': 134} |
| `route` | {'str': 134} |
| `strict` | {'bool': 134} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
