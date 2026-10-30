# sandbox_telemetry_parse — 2026-10-30 11:26:32 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=989664 lines=2596
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1994 |
| `chrome_profile_sample` | 365 |
| `egress_tunnel_connect` | 138 |
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
| `chromeBrowserPssKb` | {'int': 1994} |
| `chromeGpuPssKb` | {'int': 1994} |
| `chromeOtherPssKb` | {'int': 1994} |
| `chromeProcesses` | {'int': 1994} |
| `chromeProfiles` | {'int': 1994} |
| `chromeRendererMaxPssKb` | {'int': 1994} |
| `chromeRendererPssKb` | {'int': 1994} |
| `chromeRenderers` | {'int': 1994} |
| `chromeTabs` | {'int': 1994} |
| `chromeTabsProbedProfiles` | {'int': 1994} |
| `chromeUtilityPssKb` | {'int': 1994} |
| `desktopPssKb` | {'int': 1994} |
| `hostPssKb` | {'int': 1994} |
| `kind` | {'str': 1994} |
| `memAvailableKb` | {'int': 1994} |
| `memTotalKb` | {'int': 1994} |
| `otherPssKb` | {'int': 1994} |
| `processes` | {'int': 1994} |
| `pssFallbackProcesses` | {'int': 1994} |

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
| `cpuMillicores` | {'int': 358} |
| `display` | {'int': 365} |
| `kind` | {'str': 365} |
| `processes` | {'int': 365} |
| `pssKb` | {'int': 365} |
| `rendererMaxPssKb` | {'int': 365} |
| `renderers` | {'int': 365} |
| `tabs` | {'int': 365} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 138} |
| `failClosed` | {'bool': 138} |
| `kind` | {'str': 138} |
| `route` | {'str': 138} |
| `strict` | {'bool': 138} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
