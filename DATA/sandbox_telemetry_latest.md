# sandbox_telemetry_parse — 2026-10-29 16:56:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=489031 lines=1296
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 982 |
| `chrome_profile_sample` | 186 |
| `egress_tunnel_connect` | 59 |
| `egress_tunnel_desktop` | 54 |
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
| `chromeBrowserPssKb` | {'int': 982} |
| `chromeGpuPssKb` | {'int': 982} |
| `chromeOtherPssKb` | {'int': 982} |
| `chromeProcesses` | {'int': 982} |
| `chromeProfiles` | {'int': 982} |
| `chromeRendererMaxPssKb` | {'int': 982} |
| `chromeRendererPssKb` | {'int': 982} |
| `chromeRenderers` | {'int': 982} |
| `chromeTabs` | {'int': 982} |
| `chromeTabsProbedProfiles` | {'int': 982} |
| `chromeUtilityPssKb` | {'int': 982} |
| `desktopPssKb` | {'int': 982} |
| `hostPssKb` | {'int': 982} |
| `kind` | {'str': 982} |
| `memAvailableKb` | {'int': 982} |
| `memTotalKb` | {'int': 982} |
| `otherPssKb` | {'int': 982} |
| `processes` | {'int': 982} |
| `pssFallbackProcesses` | {'int': 982} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 54} |
| `graceS` | {'int': 30} |
| `kind` | {'str': 54} |

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
| `cpuMillicores` | {'int': 182} |
| `display` | {'int': 186} |
| `kind` | {'str': 186} |
| `processes` | {'int': 186} |
| `pssKb` | {'int': 186} |
| `rendererMaxPssKb` | {'int': 186} |
| `renderers` | {'int': 186} |
| `tabs` | {'int': 186} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 59} |
| `failClosed` | {'bool': 59} |
| `kind` | {'str': 59} |
| `route` | {'str': 59} |
| `strict` | {'bool': 59} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
