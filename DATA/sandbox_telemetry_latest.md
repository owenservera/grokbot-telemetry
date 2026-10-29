# sandbox_telemetry_parse — 2026-10-29 15:19:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=444619 lines=1168
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 896 |
| `chrome_profile_sample` | 166 |
| `egress_tunnel_connect` | 49 |
| `egress_tunnel_desktop` | 44 |
| `boot_stage` | 3 |
| `chrome_launch` | 3 |
| `egress_time_zone` | 3 |
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
| `chromeBrowserPssKb` | {'int': 896} |
| `chromeGpuPssKb` | {'int': 896} |
| `chromeOtherPssKb` | {'int': 896} |
| `chromeProcesses` | {'int': 896} |
| `chromeProfiles` | {'int': 896} |
| `chromeRendererMaxPssKb` | {'int': 896} |
| `chromeRendererPssKb` | {'int': 896} |
| `chromeRenderers` | {'int': 896} |
| `chromeTabs` | {'int': 896} |
| `chromeTabsProbedProfiles` | {'int': 896} |
| `chromeUtilityPssKb` | {'int': 896} |
| `desktopPssKb` | {'int': 896} |
| `hostPssKb` | {'int': 896} |
| `kind` | {'str': 896} |
| `memAvailableKb` | {'int': 896} |
| `memTotalKb` | {'int': 896} |
| `otherPssKb` | {'int': 896} |
| `processes` | {'int': 896} |
| `pssFallbackProcesses` | {'int': 896} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 44} |
| `graceS` | {'int': 24} |
| `kind` | {'str': 44} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `display` | {'int': 3} |
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `launcher` | {'int': 3} |
| `launcherSource` | {'str': 3} |
| `mode` | {'str': 3} |
| `outcome` | {'str': 3} |

### `egress_time_zone`

| key | types |
|-----|-------|
| `boxClockUtc` | {'bool': 3} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `provider` | {'str': 3} |
| `source` | {'str': 3} |

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
| `cpuMillicores` | {'int': 163} |
| `display` | {'int': 166} |
| `kind` | {'str': 166} |
| `processes` | {'int': 166} |
| `pssKb` | {'int': 166} |
| `rendererMaxPssKb` | {'int': 166} |
| `renderers` | {'int': 166} |
| `tabs` | {'int': 166} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 49} |
| `failClosed` | {'bool': 49} |
| `kind` | {'str': 49} |
| `route` | {'str': 49} |
| `strict` | {'bool': 49} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
