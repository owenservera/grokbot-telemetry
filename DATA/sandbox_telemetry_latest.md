# sandbox_telemetry_parse — 2026-10-29 19:31:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=569049 lines=1539
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1129 |
| `chrome_profile_sample` | 240 |
| `egress_tunnel_connect` | 83 |
| `egress_tunnel_desktop` | 70 |
| `chrome_launch` | 5 |
| `egress_time_zone` | 5 |
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
| `chromeBrowserPssKb` | {'int': 1129} |
| `chromeGpuPssKb` | {'int': 1129} |
| `chromeOtherPssKb` | {'int': 1129} |
| `chromeProcesses` | {'int': 1129} |
| `chromeProfiles` | {'int': 1129} |
| `chromeRendererMaxPssKb` | {'int': 1129} |
| `chromeRendererPssKb` | {'int': 1129} |
| `chromeRenderers` | {'int': 1129} |
| `chromeTabs` | {'int': 1129} |
| `chromeTabsProbedProfiles` | {'int': 1129} |
| `chromeUtilityPssKb` | {'int': 1129} |
| `desktopPssKb` | {'int': 1129} |
| `hostPssKb` | {'int': 1129} |
| `kind` | {'str': 1129} |
| `memAvailableKb` | {'int': 1129} |
| `memTotalKb` | {'int': 1129} |
| `otherPssKb` | {'int': 1129} |
| `processes` | {'int': 1129} |
| `pssFallbackProcesses` | {'int': 1129} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 70} |
| `graceS` | {'int': 39} |
| `kind` | {'str': 70} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 5} |
| `display` | {'int': 5} |
| `durationMs` | {'int': 5} |
| `kind` | {'str': 5} |
| `launcher` | {'int': 5} |
| `launcherSource` | {'str': 5} |
| `mode` | {'str': 5} |
| `outcome` | {'str': 5} |

### `egress_time_zone`

| key | types |
|-----|-------|
| `boxClockUtc` | {'bool': 5} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `provider` | {'str': 5} |
| `source` | {'str': 5} |

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
| `cpuMillicores` | {'int': 235} |
| `display` | {'int': 240} |
| `kind` | {'str': 240} |
| `processes` | {'int': 240} |
| `pssKb` | {'int': 240} |
| `rendererMaxPssKb` | {'int': 240} |
| `renderers` | {'int': 240} |
| `tabs` | {'int': 240} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 83} |
| `failClosed` | {'bool': 83} |
| `kind` | {'str': 83} |
| `route` | {'str': 83} |
| `strict` | {'bool': 83} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
