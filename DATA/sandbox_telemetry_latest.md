# sandbox_telemetry_parse — 2026-10-30 11:10:40 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=978763 lines=2557
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1978 |
| `chrome_profile_sample` | 349 |
| `egress_tunnel_connect` | 131 |
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
| `chromeBrowserPssKb` | {'int': 1978} |
| `chromeGpuPssKb` | {'int': 1978} |
| `chromeOtherPssKb` | {'int': 1978} |
| `chromeProcesses` | {'int': 1978} |
| `chromeProfiles` | {'int': 1978} |
| `chromeRendererMaxPssKb` | {'int': 1978} |
| `chromeRendererPssKb` | {'int': 1978} |
| `chromeRenderers` | {'int': 1978} |
| `chromeTabs` | {'int': 1978} |
| `chromeTabsProbedProfiles` | {'int': 1978} |
| `chromeUtilityPssKb` | {'int': 1978} |
| `desktopPssKb` | {'int': 1978} |
| `hostPssKb` | {'int': 1978} |
| `kind` | {'str': 1978} |
| `memAvailableKb` | {'int': 1978} |
| `memTotalKb` | {'int': 1978} |
| `otherPssKb` | {'int': 1978} |
| `processes` | {'int': 1978} |
| `pssFallbackProcesses` | {'int': 1978} |

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
| `cpuMillicores` | {'int': 342} |
| `display` | {'int': 349} |
| `kind` | {'str': 349} |
| `processes` | {'int': 349} |
| `pssKb` | {'int': 349} |
| `rendererMaxPssKb` | {'int': 349} |
| `renderers` | {'int': 349} |
| `tabs` | {'int': 349} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 131} |
| `failClosed` | {'bool': 131} |
| `kind` | {'str': 131} |
| `route` | {'str': 131} |
| `strict` | {'bool': 131} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
