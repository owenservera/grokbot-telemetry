# sandbox_telemetry_parse — 2026-10-28 21:56:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=5522 lines=23
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 9 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `chrome_profile_sample` | 2 |
| `egress_tunnel_connect` | 2 |
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
| `chromeBrowserPssKb` | {'int': 9} |
| `chromeGpuPssKb` | {'int': 9} |
| `chromeOtherPssKb` | {'int': 9} |
| `chromeProcesses` | {'int': 9} |
| `chromeProfiles` | {'int': 9} |
| `chromeRendererMaxPssKb` | {'int': 9} |
| `chromeRendererPssKb` | {'int': 9} |
| `chromeRenderers` | {'int': 9} |
| `chromeTabs` | {'int': 9} |
| `chromeTabsProbedProfiles` | {'int': 9} |
| `chromeUtilityPssKb` | {'int': 9} |
| `desktopPssKb` | {'int': 9} |
| `hostPssKb` | {'int': 9} |
| `kind` | {'str': 9} |
| `memAvailableKb` | {'int': 9} |
| `memTotalKb` | {'int': 9} |
| `otherPssKb` | {'int': 9} |
| `processes` | {'int': 9} |
| `pssFallbackProcesses` | {'int': 9} |

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
| `cpuMillicores` | {'int': 1} |
| `display` | {'int': 2} |
| `kind` | {'str': 2} |
| `processes` | {'int': 2} |
| `pssKb` | {'int': 2} |
| `rendererMaxPssKb` | {'int': 2} |
| `renderers` | {'int': 2} |
| `tabs` | {'int': 2} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 2} |
| `failClosed` | {'bool': 2} |
| `kind` | {'str': 2} |
| `route` | {'str': 2} |
| `strict` | {'bool': 2} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
