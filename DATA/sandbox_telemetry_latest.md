# sandbox_telemetry_parse — 2026-10-29 14:37:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=420141 lines=1086
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 856 |
| `chrome_profile_sample` | 139 |
| `egress_tunnel_desktop` | 41 |
| `egress_tunnel_connect` | 39 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `egress_time_zone` | 2 |
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
| `chromeBrowserPssKb` | {'int': 856} |
| `chromeGpuPssKb` | {'int': 856} |
| `chromeOtherPssKb` | {'int': 856} |
| `chromeProcesses` | {'int': 856} |
| `chromeProfiles` | {'int': 856} |
| `chromeRendererMaxPssKb` | {'int': 856} |
| `chromeRendererPssKb` | {'int': 856} |
| `chromeRenderers` | {'int': 856} |
| `chromeTabs` | {'int': 856} |
| `chromeTabsProbedProfiles` | {'int': 856} |
| `chromeUtilityPssKb` | {'int': 856} |
| `desktopPssKb` | {'int': 856} |
| `hostPssKb` | {'int': 856} |
| `kind` | {'str': 856} |
| `memAvailableKb` | {'int': 856} |
| `memTotalKb` | {'int': 856} |
| `otherPssKb` | {'int': 856} |
| `processes` | {'int': 856} |
| `pssFallbackProcesses` | {'int': 856} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 41} |
| `graceS` | {'int': 23} |
| `kind` | {'str': 41} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

### `egress_time_zone`

| key | types |
|-----|-------|
| `boxClockUtc` | {'bool': 2} |
| `kind` | {'str': 2} |
| `outcome` | {'str': 2} |
| `provider` | {'str': 2} |
| `source` | {'str': 2} |

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
| `cpuMillicores` | {'int': 137} |
| `display` | {'int': 139} |
| `kind` | {'str': 139} |
| `processes` | {'int': 139} |
| `pssKb` | {'int': 139} |
| `rendererMaxPssKb` | {'int': 139} |
| `renderers` | {'int': 139} |
| `tabs` | {'int': 139} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 39} |
| `failClosed` | {'bool': 39} |
| `kind` | {'str': 39} |
| `route` | {'str': 39} |
| `strict` | {'bool': 39} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
