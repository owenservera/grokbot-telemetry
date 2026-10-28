# sandbox_telemetry_parse — 2026-10-28 22:01:55 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=8913 lines=35
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 14 |
| `chrome_profile_sample` | 7 |
| `egress_tunnel_connect` | 4 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `egress_tunnel_desktop` | 1 |
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
| `chromeBrowserPssKb` | {'int': 14} |
| `chromeGpuPssKb` | {'int': 14} |
| `chromeOtherPssKb` | {'int': 14} |
| `chromeProcesses` | {'int': 14} |
| `chromeProfiles` | {'int': 14} |
| `chromeRendererMaxPssKb` | {'int': 14} |
| `chromeRendererPssKb` | {'int': 14} |
| `chromeRenderers` | {'int': 14} |
| `chromeTabs` | {'int': 14} |
| `chromeTabsProbedProfiles` | {'int': 14} |
| `chromeUtilityPssKb` | {'int': 14} |
| `desktopPssKb` | {'int': 14} |
| `hostPssKb` | {'int': 14} |
| `kind` | {'str': 14} |
| `memAvailableKb` | {'int': 14} |
| `memTotalKb` | {'int': 14} |
| `otherPssKb` | {'int': 14} |
| `processes` | {'int': 14} |
| `pssFallbackProcesses` | {'int': 14} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 1} |
| `kind` | {'str': 1} |

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
| `cpuMillicores` | {'int': 6} |
| `display` | {'int': 7} |
| `kind` | {'str': 7} |
| `processes` | {'int': 7} |
| `pssKb` | {'int': 7} |
| `rendererMaxPssKb` | {'int': 7} |
| `renderers` | {'int': 7} |
| `tabs` | {'int': 7} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 4} |
| `failClosed` | {'bool': 4} |
| `kind` | {'str': 4} |
| `route` | {'str': 4} |
| `strict` | {'bool': 4} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
