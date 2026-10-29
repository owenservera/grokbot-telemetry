# sandbox_telemetry_parse — 2026-10-29 17:02:09 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=492627 lines=1311
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 987 |
| `chrome_profile_sample` | 191 |
| `egress_tunnel_connect` | 62 |
| `egress_tunnel_desktop` | 56 |
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
| `chromeBrowserPssKb` | {'int': 987} |
| `chromeGpuPssKb` | {'int': 987} |
| `chromeOtherPssKb` | {'int': 987} |
| `chromeProcesses` | {'int': 987} |
| `chromeProfiles` | {'int': 987} |
| `chromeRendererMaxPssKb` | {'int': 987} |
| `chromeRendererPssKb` | {'int': 987} |
| `chromeRenderers` | {'int': 987} |
| `chromeTabs` | {'int': 987} |
| `chromeTabsProbedProfiles` | {'int': 987} |
| `chromeUtilityPssKb` | {'int': 987} |
| `desktopPssKb` | {'int': 987} |
| `hostPssKb` | {'int': 987} |
| `kind` | {'str': 987} |
| `memAvailableKb` | {'int': 987} |
| `memTotalKb` | {'int': 987} |
| `otherPssKb` | {'int': 987} |
| `processes` | {'int': 987} |
| `pssFallbackProcesses` | {'int': 987} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 56} |
| `graceS` | {'int': 31} |
| `kind` | {'str': 56} |

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
| `cpuMillicores` | {'int': 187} |
| `display` | {'int': 191} |
| `kind` | {'str': 191} |
| `processes` | {'int': 191} |
| `pssKb` | {'int': 191} |
| `rendererMaxPssKb` | {'int': 191} |
| `renderers` | {'int': 191} |
| `tabs` | {'int': 191} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 62} |
| `failClosed` | {'bool': 62} |
| `kind` | {'str': 62} |
| `route` | {'str': 62} |
| `strict` | {'bool': 62} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
