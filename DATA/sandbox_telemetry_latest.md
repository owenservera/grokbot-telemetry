# sandbox_telemetry_parse — 2026-10-28 23:48:36 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=47133 lines=183
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 69 |
| `chrome_profile_sample` | 62 |
| `egress_tunnel_connect` | 27 |
| `egress_tunnel_desktop` | 16 |
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
| `chromeBrowserPssKb` | {'int': 69} |
| `chromeGpuPssKb` | {'int': 69} |
| `chromeOtherPssKb` | {'int': 69} |
| `chromeProcesses` | {'int': 69} |
| `chromeProfiles` | {'int': 69} |
| `chromeRendererMaxPssKb` | {'int': 69} |
| `chromeRendererPssKb` | {'int': 69} |
| `chromeRenderers` | {'int': 69} |
| `chromeTabs` | {'int': 69} |
| `chromeTabsProbedProfiles` | {'int': 69} |
| `chromeUtilityPssKb` | {'int': 69} |
| `desktopPssKb` | {'int': 69} |
| `hostPssKb` | {'int': 69} |
| `kind` | {'str': 69} |
| `memAvailableKb` | {'int': 69} |
| `memTotalKb` | {'int': 69} |
| `otherPssKb` | {'int': 69} |
| `processes` | {'int': 69} |
| `pssFallbackProcesses` | {'int': 69} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 16} |
| `graceS` | {'int': 8} |
| `kind` | {'str': 16} |

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
| `cpuMillicores` | {'int': 61} |
| `display` | {'int': 62} |
| `kind` | {'str': 62} |
| `processes` | {'int': 62} |
| `pssKb` | {'int': 62} |
| `rendererMaxPssKb` | {'int': 62} |
| `renderers` | {'int': 62} |
| `tabs` | {'int': 62} |

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
