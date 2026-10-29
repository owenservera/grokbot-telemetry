# sandbox_telemetry_parse — 2026-10-29 19:26:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=565454 lines=1524
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1124 |
| `chrome_profile_sample` | 235 |
| `egress_tunnel_connect` | 80 |
| `egress_tunnel_desktop` | 68 |
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
| `chromeBrowserPssKb` | {'int': 1124} |
| `chromeGpuPssKb` | {'int': 1124} |
| `chromeOtherPssKb` | {'int': 1124} |
| `chromeProcesses` | {'int': 1124} |
| `chromeProfiles` | {'int': 1124} |
| `chromeRendererMaxPssKb` | {'int': 1124} |
| `chromeRendererPssKb` | {'int': 1124} |
| `chromeRenderers` | {'int': 1124} |
| `chromeTabs` | {'int': 1124} |
| `chromeTabsProbedProfiles` | {'int': 1124} |
| `chromeUtilityPssKb` | {'int': 1124} |
| `desktopPssKb` | {'int': 1124} |
| `hostPssKb` | {'int': 1124} |
| `kind` | {'str': 1124} |
| `memAvailableKb` | {'int': 1124} |
| `memTotalKb` | {'int': 1124} |
| `otherPssKb` | {'int': 1124} |
| `processes` | {'int': 1124} |
| `pssFallbackProcesses` | {'int': 1124} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 68} |
| `graceS` | {'int': 38} |
| `kind` | {'str': 68} |

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
| `cpuMillicores` | {'int': 230} |
| `display` | {'int': 235} |
| `kind` | {'str': 235} |
| `processes` | {'int': 235} |
| `pssKb` | {'int': 235} |
| `rendererMaxPssKb` | {'int': 235} |
| `renderers` | {'int': 235} |
| `tabs` | {'int': 235} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 80} |
| `failClosed` | {'bool': 80} |
| `kind` | {'str': 80} |
| `route` | {'str': 80} |
| `strict` | {'bool': 80} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
