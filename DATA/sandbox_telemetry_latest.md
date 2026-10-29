# sandbox_telemetry_parse — 2026-10-29 15:03:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=437091 lines=1149
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 881 |
| `chrome_profile_sample` | 162 |
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
| `chromeBrowserPssKb` | {'int': 881} |
| `chromeGpuPssKb` | {'int': 881} |
| `chromeOtherPssKb` | {'int': 881} |
| `chromeProcesses` | {'int': 881} |
| `chromeProfiles` | {'int': 881} |
| `chromeRendererMaxPssKb` | {'int': 881} |
| `chromeRendererPssKb` | {'int': 881} |
| `chromeRenderers` | {'int': 881} |
| `chromeTabs` | {'int': 881} |
| `chromeTabsProbedProfiles` | {'int': 881} |
| `chromeUtilityPssKb` | {'int': 881} |
| `desktopPssKb` | {'int': 881} |
| `hostPssKb` | {'int': 881} |
| `kind` | {'str': 881} |
| `memAvailableKb` | {'int': 881} |
| `memTotalKb` | {'int': 881} |
| `otherPssKb` | {'int': 881} |
| `processes` | {'int': 881} |
| `pssFallbackProcesses` | {'int': 881} |

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
| `cpuMillicores` | {'int': 159} |
| `display` | {'int': 162} |
| `kind` | {'str': 162} |
| `processes` | {'int': 162} |
| `pssKb` | {'int': 162} |
| `rendererMaxPssKb` | {'int': 162} |
| `renderers` | {'int': 162} |
| `tabs` | {'int': 162} |

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
