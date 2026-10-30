# sandbox_telemetry_parse — 2026-10-30 11:09:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=977932 lines=2553
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1977 |
| `chrome_profile_sample` | 348 |
| `egress_tunnel_connect` | 129 |
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
| `chromeBrowserPssKb` | {'int': 1977} |
| `chromeGpuPssKb` | {'int': 1977} |
| `chromeOtherPssKb` | {'int': 1977} |
| `chromeProcesses` | {'int': 1977} |
| `chromeProfiles` | {'int': 1977} |
| `chromeRendererMaxPssKb` | {'int': 1977} |
| `chromeRendererPssKb` | {'int': 1977} |
| `chromeRenderers` | {'int': 1977} |
| `chromeTabs` | {'int': 1977} |
| `chromeTabsProbedProfiles` | {'int': 1977} |
| `chromeUtilityPssKb` | {'int': 1977} |
| `desktopPssKb` | {'int': 1977} |
| `hostPssKb` | {'int': 1977} |
| `kind` | {'str': 1977} |
| `memAvailableKb` | {'int': 1977} |
| `memTotalKb` | {'int': 1977} |
| `otherPssKb` | {'int': 1977} |
| `processes` | {'int': 1977} |
| `pssFallbackProcesses` | {'int': 1977} |

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
| `cpuMillicores` | {'int': 341} |
| `display` | {'int': 348} |
| `kind` | {'str': 348} |
| `processes` | {'int': 348} |
| `pssKb` | {'int': 348} |
| `rendererMaxPssKb` | {'int': 348} |
| `renderers` | {'int': 348} |
| `tabs` | {'int': 348} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 129} |
| `failClosed` | {'bool': 129} |
| `kind` | {'str': 129} |
| `route` | {'str': 129} |
| `strict` | {'bool': 129} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
