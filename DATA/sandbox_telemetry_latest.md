# sandbox_telemetry_parse — 2026-10-27 14:00:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=550817 lines=1238
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1209 |
| `chrome_profile_sample` | 11 |
| `egress_tunnel_desktop` | 5 |
| `egress_tunnel_connect` | 4 |
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
| `chromeBrowserPssKb` | {'int': 1209} |
| `chromeGpuPssKb` | {'int': 1209} |
| `chromeOtherPssKb` | {'int': 1209} |
| `chromeProcesses` | {'int': 1209} |
| `chromeProfiles` | {'int': 1209} |
| `chromeRendererMaxPssKb` | {'int': 1209} |
| `chromeRendererPssKb` | {'int': 1209} |
| `chromeRenderers` | {'int': 1209} |
| `chromeTabs` | {'int': 1209} |
| `chromeTabsProbedProfiles` | {'int': 1209} |
| `chromeUtilityPssKb` | {'int': 1209} |
| `desktopPssKb` | {'int': 1209} |
| `hostPssKb` | {'int': 1209} |
| `kind` | {'str': 1209} |
| `memAvailableKb` | {'int': 1209} |
| `memTotalKb` | {'int': 1209} |
| `otherPssKb` | {'int': 1209} |
| `processes` | {'int': 1209} |
| `pssFallbackProcesses` | {'int': 1209} |

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
| `count` | {'int': 4} |
| `failClosed` | {'bool': 4} |
| `kind` | {'str': 4} |
| `route` | {'str': 4} |
| `strict` | {'bool': 4} |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 10} |
| `display` | {'int': 11} |
| `kind` | {'str': 11} |
| `processes` | {'int': 11} |
| `pssKb` | {'int': 11} |
| `rendererMaxPssKb` | {'int': 11} |
| `renderers` | {'int': 11} |
| `tabs` | {'int': 11} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
