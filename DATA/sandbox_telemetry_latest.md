# sandbox_telemetry_parse — 2026-10-30 11:33:09 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=991153 lines=2603
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1996 |
| `chrome_profile_sample` | 367 |
| `egress_tunnel_connect` | 139 |
| `egress_tunnel_desktop` | 80 |
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
| `chromeBrowserPssKb` | {'int': 1996} |
| `chromeGpuPssKb` | {'int': 1996} |
| `chromeOtherPssKb` | {'int': 1996} |
| `chromeProcesses` | {'int': 1996} |
| `chromeProfiles` | {'int': 1996} |
| `chromeRendererMaxPssKb` | {'int': 1996} |
| `chromeRendererPssKb` | {'int': 1996} |
| `chromeRenderers` | {'int': 1996} |
| `chromeTabs` | {'int': 1996} |
| `chromeTabsProbedProfiles` | {'int': 1996} |
| `chromeUtilityPssKb` | {'int': 1996} |
| `desktopPssKb` | {'int': 1996} |
| `hostPssKb` | {'int': 1996} |
| `kind` | {'str': 1996} |
| `memAvailableKb` | {'int': 1996} |
| `memTotalKb` | {'int': 1996} |
| `otherPssKb` | {'int': 1996} |
| `processes` | {'int': 1996} |
| `pssFallbackProcesses` | {'int': 1996} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 80} |
| `graceS` | {'int': 45} |
| `kind` | {'str': 80} |

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
| `cpuMillicores` | {'int': 360} |
| `display` | {'int': 367} |
| `kind` | {'str': 367} |
| `processes` | {'int': 367} |
| `pssKb` | {'int': 367} |
| `rendererMaxPssKb` | {'int': 367} |
| `renderers` | {'int': 367} |
| `tabs` | {'int': 367} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 139} |
| `failClosed` | {'bool': 139} |
| `kind` | {'str': 139} |
| `route` | {'str': 139} |
| `strict` | {'bool': 139} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
