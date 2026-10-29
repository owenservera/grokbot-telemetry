# sandbox_telemetry_parse — 2026-10-29 19:05:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=551147 lines=1472
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1103 |
| `chrome_profile_sample` | 214 |
| `egress_tunnel_connect` | 72 |
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
| `chromeBrowserPssKb` | {'int': 1103} |
| `chromeGpuPssKb` | {'int': 1103} |
| `chromeOtherPssKb` | {'int': 1103} |
| `chromeProcesses` | {'int': 1103} |
| `chromeProfiles` | {'int': 1103} |
| `chromeRendererMaxPssKb` | {'int': 1103} |
| `chromeRendererPssKb` | {'int': 1103} |
| `chromeRenderers` | {'int': 1103} |
| `chromeTabs` | {'int': 1103} |
| `chromeTabsProbedProfiles` | {'int': 1103} |
| `chromeUtilityPssKb` | {'int': 1103} |
| `desktopPssKb` | {'int': 1103} |
| `hostPssKb` | {'int': 1103} |
| `kind` | {'str': 1103} |
| `memAvailableKb` | {'int': 1103} |
| `memTotalKb` | {'int': 1103} |
| `otherPssKb` | {'int': 1103} |
| `processes` | {'int': 1103} |
| `pssFallbackProcesses` | {'int': 1103} |

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
| `cpuMillicores` | {'int': 209} |
| `display` | {'int': 214} |
| `kind` | {'str': 214} |
| `processes` | {'int': 214} |
| `pssKb` | {'int': 214} |
| `rendererMaxPssKb` | {'int': 214} |
| `renderers` | {'int': 214} |
| `tabs` | {'int': 214} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 72} |
| `failClosed` | {'bool': 72} |
| `kind` | {'str': 72} |
| `route` | {'str': 72} |
| `strict` | {'bool': 72} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
