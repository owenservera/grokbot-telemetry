# sandbox_telemetry_parse — 2026-10-30 01:04:37 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=727960 lines=1997
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1425 |
| `chrome_profile_sample` | 347 |
| `egress_tunnel_connect` | 129 |
| `egress_tunnel_desktop` | 77 |
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
| `chromeBrowserPssKb` | {'int': 1425} |
| `chromeGpuPssKb` | {'int': 1425} |
| `chromeOtherPssKb` | {'int': 1425} |
| `chromeProcesses` | {'int': 1425} |
| `chromeProfiles` | {'int': 1425} |
| `chromeRendererMaxPssKb` | {'int': 1425} |
| `chromeRendererPssKb` | {'int': 1425} |
| `chromeRenderers` | {'int': 1425} |
| `chromeTabs` | {'int': 1425} |
| `chromeTabsProbedProfiles` | {'int': 1425} |
| `chromeUtilityPssKb` | {'int': 1425} |
| `desktopPssKb` | {'int': 1425} |
| `hostPssKb` | {'int': 1425} |
| `kind` | {'str': 1425} |
| `memAvailableKb` | {'int': 1425} |
| `memTotalKb` | {'int': 1425} |
| `otherPssKb` | {'int': 1425} |
| `processes` | {'int': 1425} |
| `pssFallbackProcesses` | {'int': 1425} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 77} |
| `graceS` | {'int': 44} |
| `kind` | {'str': 77} |

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
| `cpuMillicores` | {'int': 341} |
| `display` | {'int': 347} |
| `kind` | {'str': 347} |
| `processes` | {'int': 347} |
| `pssKb` | {'int': 347} |
| `rendererMaxPssKb` | {'int': 347} |
| `renderers` | {'int': 347} |
| `tabs` | {'int': 347} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 129} |
| `failClosed` | {'bool': 129} |
| `kind` | {'str': 129} |
| `route` | {'str': 129} |
| `strict` | {'bool': 129} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
