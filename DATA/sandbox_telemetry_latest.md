# sandbox_telemetry_parse — 2026-10-28 23:57:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=51723 lines=199
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 76 |
| `chrome_profile_sample` | 69 |
| `egress_tunnel_connect` | 27 |
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
| `chromeBrowserPssKb` | {'int': 76} |
| `chromeGpuPssKb` | {'int': 76} |
| `chromeOtherPssKb` | {'int': 76} |
| `chromeProcesses` | {'int': 76} |
| `chromeProfiles` | {'int': 76} |
| `chromeRendererMaxPssKb` | {'int': 76} |
| `chromeRendererPssKb` | {'int': 76} |
| `chromeRenderers` | {'int': 76} |
| `chromeTabs` | {'int': 76} |
| `chromeTabsProbedProfiles` | {'int': 76} |
| `chromeUtilityPssKb` | {'int': 76} |
| `desktopPssKb` | {'int': 76} |
| `hostPssKb` | {'int': 76} |
| `kind` | {'str': 76} |
| `memAvailableKb` | {'int': 76} |
| `memTotalKb` | {'int': 76} |
| `otherPssKb` | {'int': 76} |
| `processes` | {'int': 76} |
| `pssFallbackProcesses` | {'int': 76} |

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
| `cpuMillicores` | {'int': 68} |
| `display` | {'int': 69} |
| `kind` | {'str': 69} |
| `processes` | {'int': 69} |
| `pssKb` | {'int': 69} |
| `rendererMaxPssKb` | {'int': 69} |
| `renderers` | {'int': 69} |
| `tabs` | {'int': 69} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 27} |
| `failClosed` | {'bool': 27} |
| `kind` | {'str': 27} |
| `route` | {'str': 27} |
| `strict` | {'bool': 27} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
