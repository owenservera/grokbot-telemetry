# sandbox_telemetry_parse — 2026-10-29 14:13:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=408355 lines=1051
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 834 |
| `chrome_profile_sample` | 131 |
| `egress_tunnel_connect` | 38 |
| `egress_tunnel_desktop` | 37 |
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
| `chromeBrowserPssKb` | {'int': 834} |
| `chromeGpuPssKb` | {'int': 834} |
| `chromeOtherPssKb` | {'int': 834} |
| `chromeProcesses` | {'int': 834} |
| `chromeProfiles` | {'int': 834} |
| `chromeRendererMaxPssKb` | {'int': 834} |
| `chromeRendererPssKb` | {'int': 834} |
| `chromeRenderers` | {'int': 834} |
| `chromeTabs` | {'int': 834} |
| `chromeTabsProbedProfiles` | {'int': 834} |
| `chromeUtilityPssKb` | {'int': 834} |
| `desktopPssKb` | {'int': 834} |
| `hostPssKb` | {'int': 834} |
| `kind` | {'str': 834} |
| `memAvailableKb` | {'int': 834} |
| `memTotalKb` | {'int': 834} |
| `otherPssKb` | {'int': 834} |
| `processes` | {'int': 834} |
| `pssFallbackProcesses` | {'int': 834} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 37} |
| `graceS` | {'int': 20} |
| `kind` | {'str': 37} |

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
| `cpuMillicores` | {'int': 129} |
| `display` | {'int': 131} |
| `kind` | {'str': 131} |
| `processes` | {'int': 131} |
| `pssKb` | {'int': 131} |
| `rendererMaxPssKb` | {'int': 131} |
| `renderers` | {'int': 131} |
| `tabs` | {'int': 131} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 38} |
| `failClosed` | {'bool': 38} |
| `kind` | {'str': 38} |
| `route` | {'str': 38} |
| `strict` | {'bool': 38} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
