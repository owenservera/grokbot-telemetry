# sandbox_telemetry_parse — 2026-10-28 23:59:32 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=53190 lines=205
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 78 |
| `chrome_profile_sample` | 71 |
| `egress_tunnel_connect` | 29 |
| `egress_tunnel_desktop` | 18 |
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
| `chromeBrowserPssKb` | {'int': 78} |
| `chromeGpuPssKb` | {'int': 78} |
| `chromeOtherPssKb` | {'int': 78} |
| `chromeProcesses` | {'int': 78} |
| `chromeProfiles` | {'int': 78} |
| `chromeRendererMaxPssKb` | {'int': 78} |
| `chromeRendererPssKb` | {'int': 78} |
| `chromeRenderers` | {'int': 78} |
| `chromeTabs` | {'int': 78} |
| `chromeTabsProbedProfiles` | {'int': 78} |
| `chromeUtilityPssKb` | {'int': 78} |
| `desktopPssKb` | {'int': 78} |
| `hostPssKb` | {'int': 78} |
| `kind` | {'str': 78} |
| `memAvailableKb` | {'int': 78} |
| `memTotalKb` | {'int': 78} |
| `otherPssKb` | {'int': 78} |
| `processes` | {'int': 78} |
| `pssFallbackProcesses` | {'int': 78} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 18} |
| `graceS` | {'int': 9} |
| `kind` | {'str': 18} |

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
| `cpuMillicores` | {'int': 70} |
| `display` | {'int': 71} |
| `kind` | {'str': 71} |
| `processes` | {'int': 71} |
| `pssKb` | {'int': 71} |
| `rendererMaxPssKb` | {'int': 71} |
| `renderers` | {'int': 71} |
| `tabs` | {'int': 71} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 29} |
| `failClosed` | {'bool': 29} |
| `kind` | {'str': 29} |
| `route` | {'str': 29} |
| `strict` | {'bool': 29} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
