# sandbox_telemetry_parse — 2026-10-29 00:25:18 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=64254 lines=236
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 100 |
| `chrome_profile_sample` | 75 |
| `egress_tunnel_connect` | 31 |
| `egress_tunnel_desktop` | 21 |
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
| `chromeBrowserPssKb` | {'int': 100} |
| `chromeGpuPssKb` | {'int': 100} |
| `chromeOtherPssKb` | {'int': 100} |
| `chromeProcesses` | {'int': 100} |
| `chromeProfiles` | {'int': 100} |
| `chromeRendererMaxPssKb` | {'int': 100} |
| `chromeRendererPssKb` | {'int': 100} |
| `chromeRenderers` | {'int': 100} |
| `chromeTabs` | {'int': 100} |
| `chromeTabsProbedProfiles` | {'int': 100} |
| `chromeUtilityPssKb` | {'int': 100} |
| `desktopPssKb` | {'int': 100} |
| `hostPssKb` | {'int': 100} |
| `kind` | {'str': 100} |
| `memAvailableKb` | {'int': 100} |
| `memTotalKb` | {'int': 100} |
| `otherPssKb` | {'int': 100} |
| `processes` | {'int': 100} |
| `pssFallbackProcesses` | {'int': 100} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 21} |
| `graceS` | {'int': 11} |
| `kind` | {'str': 21} |

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
| `cpuMillicores` | {'int': 74} |
| `display` | {'int': 75} |
| `kind` | {'str': 75} |
| `processes` | {'int': 75} |
| `pssKb` | {'int': 75} |
| `rendererMaxPssKb` | {'int': 75} |
| `renderers` | {'int': 75} |
| `tabs` | {'int': 75} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 31} |
| `failClosed` | {'bool': 31} |
| `kind` | {'str': 31} |
| `route` | {'str': 31} |
| `strict` | {'bool': 31} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
