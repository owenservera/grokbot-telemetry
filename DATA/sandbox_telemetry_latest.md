# sandbox_telemetry_parse — 2026-10-29 20:02:49 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=586824 lines=1601
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1158 |
| `chrome_profile_sample` | 258 |
| `egress_tunnel_connect` | 91 |
| `egress_tunnel_desktop` | 75 |
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
| `chromeBrowserPssKb` | {'int': 1158} |
| `chromeGpuPssKb` | {'int': 1158} |
| `chromeOtherPssKb` | {'int': 1158} |
| `chromeProcesses` | {'int': 1158} |
| `chromeProfiles` | {'int': 1158} |
| `chromeRendererMaxPssKb` | {'int': 1158} |
| `chromeRendererPssKb` | {'int': 1158} |
| `chromeRenderers` | {'int': 1158} |
| `chromeTabs` | {'int': 1158} |
| `chromeTabsProbedProfiles` | {'int': 1158} |
| `chromeUtilityPssKb` | {'int': 1158} |
| `desktopPssKb` | {'int': 1158} |
| `hostPssKb` | {'int': 1158} |
| `kind` | {'str': 1158} |
| `memAvailableKb` | {'int': 1158} |
| `memTotalKb` | {'int': 1158} |
| `otherPssKb` | {'int': 1158} |
| `processes` | {'int': 1158} |
| `pssFallbackProcesses` | {'int': 1158} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 75} |
| `graceS` | {'int': 42} |
| `kind` | {'str': 75} |

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
| `cpuMillicores` | {'int': 252} |
| `display` | {'int': 258} |
| `kind` | {'str': 258} |
| `processes` | {'int': 258} |
| `pssKb` | {'int': 258} |
| `rendererMaxPssKb` | {'int': 258} |
| `renderers` | {'int': 258} |
| `tabs` | {'int': 258} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 91} |
| `failClosed` | {'bool': 91} |
| `kind` | {'str': 91} |
| `route` | {'str': 91} |
| `strict` | {'bool': 91} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
