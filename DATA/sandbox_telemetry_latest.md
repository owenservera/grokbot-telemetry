# sandbox_telemetry_parse — 2026-10-27 14:43:38 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=570814 lines=1302
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1240 |
| `chrome_profile_sample` | 42 |
| `egress_tunnel_connect` | 6 |
| `egress_tunnel_desktop` | 5 |
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
| `chromeBrowserPssKb` | {'int': 1240} |
| `chromeGpuPssKb` | {'int': 1240} |
| `chromeOtherPssKb` | {'int': 1240} |
| `chromeProcesses` | {'int': 1240} |
| `chromeProfiles` | {'int': 1240} |
| `chromeRendererMaxPssKb` | {'int': 1240} |
| `chromeRendererPssKb` | {'int': 1240} |
| `chromeRenderers` | {'int': 1240} |
| `chromeTabs` | {'int': 1240} |
| `chromeTabsProbedProfiles` | {'int': 1240} |
| `chromeUtilityPssKb` | {'int': 1240} |
| `desktopPssKb` | {'int': 1240} |
| `hostPssKb` | {'int': 1240} |
| `kind` | {'str': 1240} |
| `memAvailableKb` | {'int': 1240} |
| `memTotalKb` | {'int': 1240} |
| `otherPssKb` | {'int': 1240} |
| `processes` | {'int': 1240} |
| `pssFallbackProcesses` | {'int': 1240} |

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
| `count` | {'int': 6} |
| `failClosed` | {'bool': 6} |
| `kind` | {'str': 6} |
| `route` | {'str': 6} |
| `strict` | {'bool': 6} |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 41} |
| `display` | {'int': 42} |
| `kind` | {'str': 42} |
| `processes` | {'int': 42} |
| `pssKb` | {'int': 42} |
| `rendererMaxPssKb` | {'int': 42} |
| `renderers` | {'int': 42} |
| `tabs` | {'int': 42} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
