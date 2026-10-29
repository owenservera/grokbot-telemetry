# sandbox_telemetry_parse — 2026-10-30 00:14:34 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=710784 lines=1959
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1387 |
| `chrome_profile_sample` | 347 |
| `egress_tunnel_connect` | 129 |
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
| `chromeBrowserPssKb` | {'int': 1387} |
| `chromeGpuPssKb` | {'int': 1387} |
| `chromeOtherPssKb` | {'int': 1387} |
| `chromeProcesses` | {'int': 1387} |
| `chromeProfiles` | {'int': 1387} |
| `chromeRendererMaxPssKb` | {'int': 1387} |
| `chromeRendererPssKb` | {'int': 1387} |
| `chromeRenderers` | {'int': 1387} |
| `chromeTabs` | {'int': 1387} |
| `chromeTabsProbedProfiles` | {'int': 1387} |
| `chromeUtilityPssKb` | {'int': 1387} |
| `desktopPssKb` | {'int': 1387} |
| `hostPssKb` | {'int': 1387} |
| `kind` | {'str': 1387} |
| `memAvailableKb` | {'int': 1387} |
| `memTotalKb` | {'int': 1387} |
| `otherPssKb` | {'int': 1387} |
| `processes` | {'int': 1387} |
| `pssFallbackProcesses` | {'int': 1387} |

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
| `cpuMillicores` | {'int': 341} |
| `display` | {'int': 347} |
| `kind` | {'str': 347} |
| `processes` | {'int': 347} |
| `pssKb` | {'int': 347} |
| `rendererMaxPssKb` | {'int': 347} |
| `renderers` | {'int': 347} |
| `tabs` | {'int': 347} |

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
