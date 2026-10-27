# sandbox_telemetry_parse — 2026-10-27 14:05:55 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=554012 lines=1248
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1214 |
| `chrome_profile_sample` | 16 |
| `egress_tunnel_desktop` | 5 |
| `egress_tunnel_connect` | 4 |
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
| `chromeBrowserPssKb` | {'int': 1214} |
| `chromeGpuPssKb` | {'int': 1214} |
| `chromeOtherPssKb` | {'int': 1214} |
| `chromeProcesses` | {'int': 1214} |
| `chromeProfiles` | {'int': 1214} |
| `chromeRendererMaxPssKb` | {'int': 1214} |
| `chromeRendererPssKb` | {'int': 1214} |
| `chromeRenderers` | {'int': 1214} |
| `chromeTabs` | {'int': 1214} |
| `chromeTabsProbedProfiles` | {'int': 1214} |
| `chromeUtilityPssKb` | {'int': 1214} |
| `desktopPssKb` | {'int': 1214} |
| `hostPssKb` | {'int': 1214} |
| `kind` | {'str': 1214} |
| `memAvailableKb` | {'int': 1214} |
| `memTotalKb` | {'int': 1214} |
| `otherPssKb` | {'int': 1214} |
| `processes` | {'int': 1214} |
| `pssFallbackProcesses` | {'int': 1214} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 5} |
| `graceS` | {'int': 3} |
| `kind` | {'str': 5} |

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

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 4} |
| `failClosed` | {'bool': 4} |
| `kind` | {'str': 4} |
| `route` | {'str': 4} |
| `strict` | {'bool': 4} |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 15} |
| `display` | {'int': 16} |
| `kind` | {'str': 16} |
| `processes` | {'int': 16} |
| `pssKb` | {'int': 16} |
| `rendererMaxPssKb` | {'int': 16} |
| `renderers` | {'int': 16} |
| `tabs` | {'int': 16} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
