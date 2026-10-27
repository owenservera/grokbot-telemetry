# sandbox_telemetry_parse — 2026-10-27 14:28:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=561135 lines=1271
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1225 |
| `chrome_profile_sample` | 27 |
| `egress_tunnel_desktop` | 5 |
| `egress_tunnel_connect` | 5 |
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
| `chromeBrowserPssKb` | {'int': 1225} |
| `chromeGpuPssKb` | {'int': 1225} |
| `chromeOtherPssKb` | {'int': 1225} |
| `chromeProcesses` | {'int': 1225} |
| `chromeProfiles` | {'int': 1225} |
| `chromeRendererMaxPssKb` | {'int': 1225} |
| `chromeRendererPssKb` | {'int': 1225} |
| `chromeRenderers` | {'int': 1225} |
| `chromeTabs` | {'int': 1225} |
| `chromeTabsProbedProfiles` | {'int': 1225} |
| `chromeUtilityPssKb` | {'int': 1225} |
| `desktopPssKb` | {'int': 1225} |
| `hostPssKb` | {'int': 1225} |
| `kind` | {'str': 1225} |
| `memAvailableKb` | {'int': 1225} |
| `memTotalKb` | {'int': 1225} |
| `otherPssKb` | {'int': 1225} |
| `processes` | {'int': 1225} |
| `pssFallbackProcesses` | {'int': 1225} |

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
| `count` | {'int': 5} |
| `failClosed` | {'bool': 5} |
| `kind` | {'str': 5} |
| `route` | {'str': 5} |
| `strict` | {'bool': 5} |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 26} |
| `display` | {'int': 27} |
| `kind` | {'str': 27} |
| `processes` | {'int': 27} |
| `pssKb` | {'int': 27} |
| `rendererMaxPssKb` | {'int': 27} |
| `renderers` | {'int': 27} |
| `tabs` | {'int': 27} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
