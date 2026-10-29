# sandbox_telemetry_parse — 2026-10-29 19:22:11 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=562709 lines=1514
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1120 |
| `chrome_profile_sample` | 231 |
| `egress_tunnel_connect` | 78 |
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
| `chromeBrowserPssKb` | {'int': 1120} |
| `chromeGpuPssKb` | {'int': 1120} |
| `chromeOtherPssKb` | {'int': 1120} |
| `chromeProcesses` | {'int': 1120} |
| `chromeProfiles` | {'int': 1120} |
| `chromeRendererMaxPssKb` | {'int': 1120} |
| `chromeRendererPssKb` | {'int': 1120} |
| `chromeRenderers` | {'int': 1120} |
| `chromeTabs` | {'int': 1120} |
| `chromeTabsProbedProfiles` | {'int': 1120} |
| `chromeUtilityPssKb` | {'int': 1120} |
| `desktopPssKb` | {'int': 1120} |
| `hostPssKb` | {'int': 1120} |
| `kind` | {'str': 1120} |
| `memAvailableKb` | {'int': 1120} |
| `memTotalKb` | {'int': 1120} |
| `otherPssKb` | {'int': 1120} |
| `processes` | {'int': 1120} |
| `pssFallbackProcesses` | {'int': 1120} |

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
| `cpuMillicores` | {'int': 226} |
| `display` | {'int': 231} |
| `kind` | {'str': 231} |
| `processes` | {'int': 231} |
| `pssKb` | {'int': 231} |
| `rendererMaxPssKb` | {'int': 231} |
| `renderers` | {'int': 231} |
| `tabs` | {'int': 231} |

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
