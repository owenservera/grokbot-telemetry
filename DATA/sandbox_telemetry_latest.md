# sandbox_telemetry_parse — 2026-10-29 20:38:19 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=609231 lines=1686
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1190 |
| `chrome_profile_sample` | 290 |
| `egress_tunnel_connect` | 110 |
| `egress_tunnel_desktop` | 77 |
| `chrome_launch` | 6 |
| `egress_time_zone` | 6 |
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
| `chromeBrowserPssKb` | {'int': 1190} |
| `chromeGpuPssKb` | {'int': 1190} |
| `chromeOtherPssKb` | {'int': 1190} |
| `chromeProcesses` | {'int': 1190} |
| `chromeProfiles` | {'int': 1190} |
| `chromeRendererMaxPssKb` | {'int': 1190} |
| `chromeRendererPssKb` | {'int': 1190} |
| `chromeRenderers` | {'int': 1190} |
| `chromeTabs` | {'int': 1190} |
| `chromeTabsProbedProfiles` | {'int': 1190} |
| `chromeUtilityPssKb` | {'int': 1190} |
| `desktopPssKb` | {'int': 1190} |
| `hostPssKb` | {'int': 1190} |
| `kind` | {'str': 1190} |
| `memAvailableKb` | {'int': 1190} |
| `memTotalKb` | {'int': 1190} |
| `otherPssKb` | {'int': 1190} |
| `processes` | {'int': 1190} |
| `pssFallbackProcesses` | {'int': 1190} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 77} |
| `graceS` | {'int': 44} |
| `kind` | {'str': 77} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 6} |
| `display` | {'int': 6} |
| `durationMs` | {'int': 6} |
| `kind` | {'str': 6} |
| `launcher` | {'int': 6} |
| `launcherSource` | {'str': 6} |
| `mode` | {'str': 6} |
| `outcome` | {'str': 6} |

### `egress_time_zone`

| key | types |
|-----|-------|
| `boxClockUtc` | {'bool': 6} |
| `kind` | {'str': 6} |
| `outcome` | {'str': 6} |
| `provider` | {'str': 6} |
| `source` | {'str': 6} |

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
| `cpuMillicores` | {'int': 284} |
| `display` | {'int': 290} |
| `kind` | {'str': 290} |
| `processes` | {'int': 290} |
| `pssKb` | {'int': 290} |
| `rendererMaxPssKb` | {'int': 290} |
| `renderers` | {'int': 290} |
| `tabs` | {'int': 290} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 110} |
| `failClosed` | {'bool': 110} |
| `kind` | {'str': 110} |
| `route` | {'str': 110} |
| `strict` | {'bool': 110} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
