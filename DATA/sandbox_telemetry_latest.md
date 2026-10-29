# sandbox_telemetry_parse — 2026-10-29 19:54:11 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=580494 lines=1576
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1149 |
| `chrome_profile_sample` | 250 |
| `egress_tunnel_connect` | 86 |
| `egress_tunnel_desktop` | 74 |
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
| `chromeBrowserPssKb` | {'int': 1149} |
| `chromeGpuPssKb` | {'int': 1149} |
| `chromeOtherPssKb` | {'int': 1149} |
| `chromeProcesses` | {'int': 1149} |
| `chromeProfiles` | {'int': 1149} |
| `chromeRendererMaxPssKb` | {'int': 1149} |
| `chromeRendererPssKb` | {'int': 1149} |
| `chromeRenderers` | {'int': 1149} |
| `chromeTabs` | {'int': 1149} |
| `chromeTabsProbedProfiles` | {'int': 1149} |
| `chromeUtilityPssKb` | {'int': 1149} |
| `desktopPssKb` | {'int': 1149} |
| `hostPssKb` | {'int': 1149} |
| `kind` | {'str': 1149} |
| `memAvailableKb` | {'int': 1149} |
| `memTotalKb` | {'int': 1149} |
| `otherPssKb` | {'int': 1149} |
| `processes` | {'int': 1149} |
| `pssFallbackProcesses` | {'int': 1149} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 74} |
| `graceS` | {'int': 42} |
| `kind` | {'str': 74} |

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
| `cpuMillicores` | {'int': 245} |
| `display` | {'int': 250} |
| `kind` | {'str': 250} |
| `processes` | {'int': 250} |
| `pssKb` | {'int': 250} |
| `rendererMaxPssKb` | {'int': 250} |
| `renderers` | {'int': 250} |
| `tabs` | {'int': 250} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 86} |
| `failClosed` | {'bool': 86} |
| `kind` | {'str': 86} |
| `route` | {'str': 86} |
| `strict` | {'bool': 86} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
