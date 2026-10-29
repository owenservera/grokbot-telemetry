# sandbox_telemetry_parse — 2026-10-29 16:29:32 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=472177 lines=1235
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 956 |
| `chrome_profile_sample` | 166 |
| `egress_tunnel_desktop` | 51 |
| `egress_tunnel_connect` | 49 |
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
| `chromeBrowserPssKb` | {'int': 956} |
| `chromeGpuPssKb` | {'int': 956} |
| `chromeOtherPssKb` | {'int': 956} |
| `chromeProcesses` | {'int': 956} |
| `chromeProfiles` | {'int': 956} |
| `chromeRendererMaxPssKb` | {'int': 956} |
| `chromeRendererPssKb` | {'int': 956} |
| `chromeRenderers` | {'int': 956} |
| `chromeTabs` | {'int': 956} |
| `chromeTabsProbedProfiles` | {'int': 956} |
| `chromeUtilityPssKb` | {'int': 956} |
| `desktopPssKb` | {'int': 956} |
| `hostPssKb` | {'int': 956} |
| `kind` | {'str': 956} |
| `memAvailableKb` | {'int': 956} |
| `memTotalKb` | {'int': 956} |
| `otherPssKb` | {'int': 956} |
| `processes` | {'int': 956} |
| `pssFallbackProcesses` | {'int': 956} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 51} |
| `graceS` | {'int': 29} |
| `kind` | {'str': 51} |

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
