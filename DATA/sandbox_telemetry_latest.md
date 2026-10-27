# sandbox_telemetry_parse — 2026-10-27 14:16:05 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=557207 lines=1258
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1219 |
| `chrome_profile_sample` | 21 |
| `egress_tunnel_desktop` | 5 |
| `egress_tunnel_connect` | 4 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |
| `egress_time_zone` | 1 |

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
| `chromeBrowserPssKb` | {'int': 1219} |
| `chromeGpuPssKb` | {'int': 1219} |
| `chromeOtherPssKb` | {'int': 1219} |
| `chromeProcesses` | {'int': 1219} |
| `chromeProfiles` | {'int': 1219} |
| `chromeRendererMaxPssKb` | {'int': 1219} |
| `chromeRendererPssKb` | {'int': 1219} |
| `chromeRenderers` | {'int': 1219} |
| `chromeTabs` | {'int': 1219} |
| `chromeTabsProbedProfiles` | {'int': 1219} |
| `chromeUtilityPssKb` | {'int': 1219} |
| `desktopPssKb` | {'int': 1219} |
| `hostPssKb` | {'int': 1219} |
| `kind` | {'str': 1219} |
| `memAvailableKb` | {'int': 1219} |
| `memTotalKb` | {'int': 1219} |
| `otherPssKb` | {'int': 1219} |
| `processes` | {'int': 1219} |
| `pssFallbackProcesses` | {'int': 1219} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 5} |
| `graceS` | {'int': 3} |
| `kind` | {'str': 5} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

### `egress_time_zone`

| key | types |
|-----|-------|
| `boxClockUtc` | {'bool': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `provider` | {'str': 1} |
| `source` | {'str': 1} |

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
| `count` | {'int': 4} |
| `failClosed` | {'bool': 4} |
| `kind` | {'str': 4} |
| `route` | {'str': 4} |
| `strict` | {'bool': 4} |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 20} |
| `display` | {'int': 21} |
| `kind` | {'str': 21} |
| `processes` | {'int': 21} |
| `pssKb` | {'int': 21} |
| `rendererMaxPssKb` | {'int': 21} |
| `renderers` | {'int': 21} |
| `tabs` | {'int': 21} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
