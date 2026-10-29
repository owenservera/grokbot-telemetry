# sandbox_telemetry_parse — 2026-10-29 13:16:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=372401 lines=931
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 779 |
| `chrome_profile_sample` | 76 |
| `egress_tunnel_desktop` | 33 |
| `egress_tunnel_connect` | 32 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `egress_time_zone` | 2 |
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
| `chromeBrowserPssKb` | {'int': 779} |
| `chromeGpuPssKb` | {'int': 779} |
| `chromeOtherPssKb` | {'int': 779} |
| `chromeProcesses` | {'int': 779} |
| `chromeProfiles` | {'int': 779} |
| `chromeRendererMaxPssKb` | {'int': 779} |
| `chromeRendererPssKb` | {'int': 779} |
| `chromeRenderers` | {'int': 779} |
| `chromeTabs` | {'int': 779} |
| `chromeTabsProbedProfiles` | {'int': 779} |
| `chromeUtilityPssKb` | {'int': 779} |
| `desktopPssKb` | {'int': 779} |
| `hostPssKb` | {'int': 779} |
| `kind` | {'str': 779} |
| `memAvailableKb` | {'int': 779} |
| `memTotalKb` | {'int': 779} |
| `otherPssKb` | {'int': 779} |
| `processes` | {'int': 779} |
| `pssFallbackProcesses` | {'int': 779} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 33} |
| `graceS` | {'int': 18} |
| `kind` | {'str': 33} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

### `egress_time_zone`

| key | types |
|-----|-------|
| `boxClockUtc` | {'bool': 2} |
| `kind` | {'str': 2} |
| `outcome` | {'str': 2} |
| `provider` | {'str': 2} |
| `source` | {'str': 2} |

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
| `cpuMillicores` | {'int': 74} |
| `display` | {'int': 76} |
| `kind` | {'str': 76} |
| `processes` | {'int': 76} |
| `pssKb` | {'int': 76} |
| `rendererMaxPssKb` | {'int': 76} |
| `renderers` | {'int': 76} |
| `tabs` | {'int': 76} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 32} |
| `failClosed` | {'bool': 32} |
| `kind` | {'str': 32} |
| `route` | {'str': 32} |
| `strict` | {'bool': 32} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
