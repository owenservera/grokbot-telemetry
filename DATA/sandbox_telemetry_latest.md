# sandbox_telemetry_parse — 2026-10-29 19:15:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=558758 lines=1500
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1114 |
| `chrome_profile_sample` | 225 |
| `egress_tunnel_connect` | 78 |
| `egress_tunnel_desktop` | 66 |
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
| `chromeBrowserPssKb` | {'int': 1114} |
| `chromeGpuPssKb` | {'int': 1114} |
| `chromeOtherPssKb` | {'int': 1114} |
| `chromeProcesses` | {'int': 1114} |
| `chromeProfiles` | {'int': 1114} |
| `chromeRendererMaxPssKb` | {'int': 1114} |
| `chromeRendererPssKb` | {'int': 1114} |
| `chromeRenderers` | {'int': 1114} |
| `chromeTabs` | {'int': 1114} |
| `chromeTabsProbedProfiles` | {'int': 1114} |
| `chromeUtilityPssKb` | {'int': 1114} |
| `desktopPssKb` | {'int': 1114} |
| `hostPssKb` | {'int': 1114} |
| `kind` | {'str': 1114} |
| `memAvailableKb` | {'int': 1114} |
| `memTotalKb` | {'int': 1114} |
| `otherPssKb` | {'int': 1114} |
| `processes` | {'int': 1114} |
| `pssFallbackProcesses` | {'int': 1114} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 66} |
| `graceS` | {'int': 37} |
| `kind` | {'str': 66} |

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
| `cpuMillicores` | {'int': 220} |
| `display` | {'int': 225} |
| `kind` | {'str': 225} |
| `processes` | {'int': 225} |
| `pssKb` | {'int': 225} |
| `rendererMaxPssKb` | {'int': 225} |
| `renderers` | {'int': 225} |
| `tabs` | {'int': 225} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 78} |
| `failClosed` | {'bool': 78} |
| `kind` | {'str': 78} |
| `route` | {'str': 78} |
| `strict` | {'bool': 78} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
