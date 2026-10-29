# sandbox_telemetry_parse — 2026-10-29 19:02:04 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=549135 lines=1465
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1100 |
| `chrome_profile_sample` | 211 |
| `egress_tunnel_connect` | 71 |
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
| `chromeBrowserPssKb` | {'int': 1100} |
| `chromeGpuPssKb` | {'int': 1100} |
| `chromeOtherPssKb` | {'int': 1100} |
| `chromeProcesses` | {'int': 1100} |
| `chromeProfiles` | {'int': 1100} |
| `chromeRendererMaxPssKb` | {'int': 1100} |
| `chromeRendererPssKb` | {'int': 1100} |
| `chromeRenderers` | {'int': 1100} |
| `chromeTabs` | {'int': 1100} |
| `chromeTabsProbedProfiles` | {'int': 1100} |
| `chromeUtilityPssKb` | {'int': 1100} |
| `desktopPssKb` | {'int': 1100} |
| `hostPssKb` | {'int': 1100} |
| `kind` | {'str': 1100} |
| `memAvailableKb` | {'int': 1100} |
| `memTotalKb` | {'int': 1100} |
| `otherPssKb` | {'int': 1100} |
| `processes` | {'int': 1100} |
| `pssFallbackProcesses` | {'int': 1100} |

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
| `cpuMillicores` | {'int': 206} |
| `display` | {'int': 211} |
| `kind` | {'str': 211} |
| `processes` | {'int': 211} |
| `pssKb` | {'int': 211} |
| `rendererMaxPssKb` | {'int': 211} |
| `renderers` | {'int': 211} |
| `tabs` | {'int': 211} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 71} |
| `failClosed` | {'bool': 71} |
| `kind` | {'str': 71} |
| `route` | {'str': 71} |
| `strict` | {'bool': 71} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
