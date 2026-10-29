# sandbox_telemetry_parse — 2026-10-29 17:07:16 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=496129 lines=1325
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 992 |
| `chrome_profile_sample` | 196 |
| `egress_tunnel_connect` | 64 |
| `egress_tunnel_desktop` | 58 |
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
| `chromeBrowserPssKb` | {'int': 992} |
| `chromeGpuPssKb` | {'int': 992} |
| `chromeOtherPssKb` | {'int': 992} |
| `chromeProcesses` | {'int': 992} |
| `chromeProfiles` | {'int': 992} |
| `chromeRendererMaxPssKb` | {'int': 992} |
| `chromeRendererPssKb` | {'int': 992} |
| `chromeRenderers` | {'int': 992} |
| `chromeTabs` | {'int': 992} |
| `chromeTabsProbedProfiles` | {'int': 992} |
| `chromeUtilityPssKb` | {'int': 992} |
| `desktopPssKb` | {'int': 992} |
| `hostPssKb` | {'int': 992} |
| `kind` | {'str': 992} |
| `memAvailableKb` | {'int': 992} |
| `memTotalKb` | {'int': 992} |
| `otherPssKb` | {'int': 992} |
| `processes` | {'int': 992} |
| `pssFallbackProcesses` | {'int': 992} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 58} |
| `graceS` | {'int': 32} |
| `kind` | {'str': 58} |

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
| `cpuMillicores` | {'int': 192} |
| `display` | {'int': 196} |
| `kind` | {'str': 196} |
| `processes` | {'int': 196} |
| `pssKb` | {'int': 196} |
| `rendererMaxPssKb` | {'int': 196} |
| `renderers` | {'int': 196} |
| `tabs` | {'int': 196} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 64} |
| `failClosed` | {'bool': 64} |
| `kind` | {'str': 64} |
| `route` | {'str': 64} |
| `strict` | {'bool': 64} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
