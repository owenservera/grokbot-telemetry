# sandbox_telemetry_parse — 2026-10-29 20:18:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=598147 lines=1645
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1174 |
| `chrome_profile_sample` | 274 |
| `egress_tunnel_connect` | 101 |
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
| `chromeBrowserPssKb` | {'int': 1174} |
| `chromeGpuPssKb` | {'int': 1174} |
| `chromeOtherPssKb` | {'int': 1174} |
| `chromeProcesses` | {'int': 1174} |
| `chromeProfiles` | {'int': 1174} |
| `chromeRendererMaxPssKb` | {'int': 1174} |
| `chromeRendererPssKb` | {'int': 1174} |
| `chromeRenderers` | {'int': 1174} |
| `chromeTabs` | {'int': 1174} |
| `chromeTabsProbedProfiles` | {'int': 1174} |
| `chromeUtilityPssKb` | {'int': 1174} |
| `desktopPssKb` | {'int': 1174} |
| `hostPssKb` | {'int': 1174} |
| `kind` | {'str': 1174} |
| `memAvailableKb` | {'int': 1174} |
| `memTotalKb` | {'int': 1174} |
| `otherPssKb` | {'int': 1174} |
| `processes` | {'int': 1174} |
| `pssFallbackProcesses` | {'int': 1174} |

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
| `cpuMillicores` | {'int': 268} |
| `display` | {'int': 274} |
| `kind` | {'str': 274} |
| `processes` | {'int': 274} |
| `pssKb` | {'int': 274} |
| `rendererMaxPssKb` | {'int': 274} |
| `renderers` | {'int': 274} |
| `tabs` | {'int': 274} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 101} |
| `failClosed` | {'bool': 101} |
| `kind` | {'str': 101} |
| `route` | {'str': 101} |
| `strict` | {'bool': 101} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
