# sandbox_telemetry_parse — 2026-10-29 13:18:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=373777 lines=936
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 781 |
| `chrome_profile_sample` | 78 |
| `egress_tunnel_desktop` | 33 |
| `egress_tunnel_connect` | 33 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `egress_time_zone` | 2 |
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
| `chromeBrowserPssKb` | {'int': 781} |
| `chromeGpuPssKb` | {'int': 781} |
| `chromeOtherPssKb` | {'int': 781} |
| `chromeProcesses` | {'int': 781} |
| `chromeProfiles` | {'int': 781} |
| `chromeRendererMaxPssKb` | {'int': 781} |
| `chromeRendererPssKb` | {'int': 781} |
| `chromeRenderers` | {'int': 781} |
| `chromeTabs` | {'int': 781} |
| `chromeTabsProbedProfiles` | {'int': 781} |
| `chromeUtilityPssKb` | {'int': 781} |
| `desktopPssKb` | {'int': 781} |
| `hostPssKb` | {'int': 781} |
| `kind` | {'str': 781} |
| `memAvailableKb` | {'int': 781} |
| `memTotalKb` | {'int': 781} |
| `otherPssKb` | {'int': 781} |
| `processes` | {'int': 781} |
| `pssFallbackProcesses` | {'int': 781} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 33} |
| `graceS` | {'int': 18} |
| `kind` | {'str': 33} |

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

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 76} |
| `display` | {'int': 78} |
| `kind` | {'str': 78} |
| `processes` | {'int': 78} |
| `pssKb` | {'int': 78} |
| `rendererMaxPssKb` | {'int': 78} |
| `renderers` | {'int': 78} |
| `tabs` | {'int': 78} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 33} |
| `failClosed` | {'bool': 33} |
| `kind` | {'str': 33} |
| `route` | {'str': 33} |
| `strict` | {'bool': 33} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
