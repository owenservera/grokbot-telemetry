# sandbox_telemetry_parse — 2026-10-29 17:17:29 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=502899 lines=1349
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1002 |
| `chrome_profile_sample` | 206 |
| `egress_tunnel_connect` | 68 |
| `egress_tunnel_desktop` | 58 |
| `chrome_launch` | 4 |
| `egress_time_zone` | 4 |
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
| `chromeBrowserPssKb` | {'int': 1002} |
| `chromeGpuPssKb` | {'int': 1002} |
| `chromeOtherPssKb` | {'int': 1002} |
| `chromeProcesses` | {'int': 1002} |
| `chromeProfiles` | {'int': 1002} |
| `chromeRendererMaxPssKb` | {'int': 1002} |
| `chromeRendererPssKb` | {'int': 1002} |
| `chromeRenderers` | {'int': 1002} |
| `chromeTabs` | {'int': 1002} |
| `chromeTabsProbedProfiles` | {'int': 1002} |
| `chromeUtilityPssKb` | {'int': 1002} |
| `desktopPssKb` | {'int': 1002} |
| `hostPssKb` | {'int': 1002} |
| `kind` | {'str': 1002} |
| `memAvailableKb` | {'int': 1002} |
| `memTotalKb` | {'int': 1002} |
| `otherPssKb` | {'int': 1002} |
| `processes` | {'int': 1002} |
| `pssFallbackProcesses` | {'int': 1002} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 58} |
| `graceS` | {'int': 32} |
| `kind` | {'str': 58} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 4} |
| `display` | {'int': 4} |
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `launcher` | {'int': 4} |
| `launcherSource` | {'str': 4} |
| `mode` | {'str': 4} |
| `outcome` | {'str': 4} |

### `egress_time_zone`

| key | types |
|-----|-------|
| `boxClockUtc` | {'bool': 4} |
| `kind` | {'str': 4} |
| `outcome` | {'str': 4} |
| `provider` | {'str': 4} |
| `source` | {'str': 4} |

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
| `cpuMillicores` | {'int': 202} |
| `display` | {'int': 206} |
| `kind` | {'str': 206} |
| `processes` | {'int': 206} |
| `pssKb` | {'int': 206} |
| `rendererMaxPssKb` | {'int': 206} |
| `renderers` | {'int': 206} |
| `tabs` | {'int': 206} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 68} |
| `failClosed` | {'bool': 68} |
| `kind` | {'str': 68} |
| `route` | {'str': 68} |
| `strict` | {'bool': 68} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
