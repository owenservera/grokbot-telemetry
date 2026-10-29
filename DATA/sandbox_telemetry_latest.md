# sandbox_telemetry_parse — 2026-10-29 16:58:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=490520 lines=1303
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 984 |
| `chrome_profile_sample` | 188 |
| `egress_tunnel_connect` | 60 |
| `egress_tunnel_desktop` | 56 |
| `chrome_launch` | 4 |
| `egress_time_zone` | 4 |
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
| `chromeBrowserPssKb` | {'int': 984} |
| `chromeGpuPssKb` | {'int': 984} |
| `chromeOtherPssKb` | {'int': 984} |
| `chromeProcesses` | {'int': 984} |
| `chromeProfiles` | {'int': 984} |
| `chromeRendererMaxPssKb` | {'int': 984} |
| `chromeRendererPssKb` | {'int': 984} |
| `chromeRenderers` | {'int': 984} |
| `chromeTabs` | {'int': 984} |
| `chromeTabsProbedProfiles` | {'int': 984} |
| `chromeUtilityPssKb` | {'int': 984} |
| `desktopPssKb` | {'int': 984} |
| `hostPssKb` | {'int': 984} |
| `kind` | {'str': 984} |
| `memAvailableKb` | {'int': 984} |
| `memTotalKb` | {'int': 984} |
| `otherPssKb` | {'int': 984} |
| `processes` | {'int': 984} |
| `pssFallbackProcesses` | {'int': 984} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 56} |
| `graceS` | {'int': 31} |
| `kind` | {'str': 56} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 4} |
| `display` | {'int': 4} |
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `launcher` | {'int': 4} |
| `launcherSource` | {'str': 4} |
| `mode` | {'str': 4} |
| `outcome` | {'str': 4} |

### `egress_time_zone`

| key | types |
|-----|-------|
| `boxClockUtc` | {'bool': 4} |
| `kind` | {'str': 4} |
| `outcome` | {'str': 4} |
| `provider` | {'str': 4} |
| `source` | {'str': 4} |

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
| `cpuMillicores` | {'int': 184} |
| `display` | {'int': 188} |
| `kind` | {'str': 188} |
| `processes` | {'int': 188} |
| `pssKb` | {'int': 188} |
| `rendererMaxPssKb` | {'int': 188} |
| `renderers` | {'int': 188} |
| `tabs` | {'int': 188} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 60} |
| `failClosed` | {'bool': 60} |
| `kind` | {'str': 60} |
| `route` | {'str': 60} |
| `strict` | {'bool': 60} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
