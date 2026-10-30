# sandbox_telemetry_parse — 2026-10-30 16:14:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1114783 lines=2912
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2250 |
| `chrome_profile_sample` | 407 |
| `egress_tunnel_connect` | 150 |
| `egress_tunnel_desktop` | 82 |
| `chrome_launch` | 8 |
| `egress_time_zone` | 8 |
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
| `chromeBrowserPssKb` | {'int': 2250} |
| `chromeGpuPssKb` | {'int': 2250} |
| `chromeOtherPssKb` | {'int': 2250} |
| `chromeProcesses` | {'int': 2250} |
| `chromeProfiles` | {'int': 2250} |
| `chromeRendererMaxPssKb` | {'int': 2250} |
| `chromeRendererPssKb` | {'int': 2250} |
| `chromeRenderers` | {'int': 2250} |
| `chromeTabs` | {'int': 2250} |
| `chromeTabsProbedProfiles` | {'int': 2250} |
| `chromeUtilityPssKb` | {'int': 2250} |
| `desktopPssKb` | {'int': 2250} |
| `hostPssKb` | {'int': 2250} |
| `kind` | {'str': 2250} |
| `memAvailableKb` | {'int': 2250} |
| `memTotalKb` | {'int': 2250} |
| `otherPssKb` | {'int': 2250} |
| `processes` | {'int': 2250} |
| `pssFallbackProcesses` | {'int': 2250} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 82} |
| `graceS` | {'int': 47} |
| `kind` | {'str': 82} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 8} |
| `display` | {'int': 8} |
| `durationMs` | {'int': 8} |
| `kind` | {'str': 8} |
| `launcher` | {'int': 8} |
| `launcherSource` | {'str': 8} |
| `mode` | {'str': 8} |
| `outcome` | {'str': 8} |

### `egress_time_zone`

| key | types |
|-----|-------|
| `boxClockUtc` | {'bool': 8} |
| `kind` | {'str': 8} |
| `outcome` | {'str': 8} |
| `provider` | {'str': 8} |
| `source` | {'str': 8} |

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
| `cpuMillicores` | {'int': 398} |
| `display` | {'int': 407} |
| `kind` | {'str': 407} |
| `processes` | {'int': 407} |
| `pssKb` | {'int': 407} |
| `rendererMaxPssKb` | {'int': 407} |
| `renderers` | {'int': 407} |
| `tabs` | {'int': 407} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 150} |
| `failClosed` | {'bool': 150} |
| `kind` | {'str': 150} |
| `route` | {'str': 150} |
| `strict` | {'bool': 150} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
