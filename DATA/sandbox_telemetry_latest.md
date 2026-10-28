# sandbox_telemetry_parse — 2026-10-28 21:42:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1336343 lines=3039
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2910 |
| `chrome_profile_sample` | 86 |
| `egress_tunnel_connect` | 23 |
| `egress_tunnel_desktop` | 8 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `egress_time_zone` | 2 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `process_crash` | 1 |

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
| `chromeBrowserPssKb` | {'int': 2910} |
| `chromeGpuPssKb` | {'int': 2910} |
| `chromeOtherPssKb` | {'int': 2910} |
| `chromeProcesses` | {'int': 2910} |
| `chromeProfiles` | {'int': 2910} |
| `chromeRendererMaxPssKb` | {'int': 2910} |
| `chromeRendererPssKb` | {'int': 2910} |
| `chromeRenderers` | {'int': 2910} |
| `chromeTabs` | {'int': 2910} |
| `chromeTabsProbedProfiles` | {'int': 2910} |
| `chromeUtilityPssKb` | {'int': 2910} |
| `desktopPssKb` | {'int': 2910} |
| `hostPssKb` | {'int': 2910} |
| `kind` | {'str': 2910} |
| `memAvailableKb` | {'int': 2910} |
| `memTotalKb` | {'int': 2910} |
| `otherPssKb` | {'int': 2910} |
| `processes` | {'int': 2910} |
| `pssFallbackProcesses` | {'int': 2910} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 8} |
| `graceS` | {'int': 4} |
| `kind` | {'str': 8} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

### `egress_time_zone`

| key | types |
|-----|-------|
| `boxClockUtc` | {'bool': 2} |
| `kind` | {'str': 2} |
| `outcome` | {'str': 2} |
| `provider` | {'str': 2} |
| `source` | {'str': 2} |

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

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 23} |
| `failClosed` | {'bool': 23} |
| `kind` | {'str': 23} |
| `route` | {'str': 23} |
| `strict` | {'bool': 23} |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 84} |
| `display` | {'int': 86} |
| `kind` | {'str': 86} |
| `processes` | {'int': 86} |
| `pssKb` | {'int': 86} |
| `rendererMaxPssKb` | {'int': 86} |
| `renderers` | {'int': 86} |
| `tabs` | {'int': 85} |

### `process_crash`

| key | types |
|-----|-------|
| `binary` | {'str': 1} |
| `count` | {'int': 1} |
| `kind` | {'str': 1} |
| `signal` | {'str': 1} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
