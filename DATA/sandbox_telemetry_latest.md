# sandbox_telemetry_parse — 2026-10-30 17:48:34 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1197208 lines=3262
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2344 |
| `chrome_profile_sample` | 595 |
| `egress_tunnel_connect` | 218 |
| `egress_tunnel_desktop` | 82 |
| `chrome_launch` | 8 |
| `egress_time_zone` | 8 |
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
| `chromeBrowserPssKb` | {'int': 2344} |
| `chromeGpuPssKb` | {'int': 2344} |
| `chromeOtherPssKb` | {'int': 2344} |
| `chromeProcesses` | {'int': 2344} |
| `chromeProfiles` | {'int': 2344} |
| `chromeRendererMaxPssKb` | {'int': 2344} |
| `chromeRendererPssKb` | {'int': 2344} |
| `chromeRenderers` | {'int': 2344} |
| `chromeTabs` | {'int': 2344} |
| `chromeTabsProbedProfiles` | {'int': 2344} |
| `chromeUtilityPssKb` | {'int': 2344} |
| `desktopPssKb` | {'int': 2344} |
| `hostPssKb` | {'int': 2344} |
| `kind` | {'str': 2344} |
| `memAvailableKb` | {'int': 2344} |
| `memTotalKb` | {'int': 2344} |
| `otherPssKb` | {'int': 2344} |
| `processes` | {'int': 2344} |
| `pssFallbackProcesses` | {'int': 2344} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 82} |
| `graceS` | {'int': 47} |
| `kind` | {'str': 82} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 8} |
| `display` | {'int': 8} |
| `durationMs` | {'int': 8} |
| `kind` | {'str': 8} |
| `launcher` | {'int': 8} |
| `launcherSource` | {'str': 8} |
| `mode` | {'str': 8} |
| `outcome` | {'str': 8} |

### `egress_time_zone`

| key | types |
|-----|-------|
| `boxClockUtc` | {'bool': 8} |
| `kind` | {'str': 8} |
| `outcome` | {'str': 8} |
| `provider` | {'str': 8} |
| `source` | {'str': 8} |

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
| `cpuMillicores` | {'int': 586} |
| `display` | {'int': 595} |
| `kind` | {'str': 595} |
| `processes` | {'int': 595} |
| `pssKb` | {'int': 595} |
| `rendererMaxPssKb` | {'int': 595} |
| `renderers` | {'int': 595} |
| `tabs` | {'int': 595} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 218} |
| `failClosed` | {'bool': 218} |
| `kind` | {'str': 218} |
| `route` | {'str': 218} |
| `strict` | {'bool': 218} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
