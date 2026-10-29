# sandbox_telemetry_parse — 2026-10-29 19:10:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=555367 lines=1488
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1109 |
| `chrome_profile_sample` | 220 |
| `egress_tunnel_connect` | 76 |
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
| `chromeBrowserPssKb` | {'int': 1109} |
| `chromeGpuPssKb` | {'int': 1109} |
| `chromeOtherPssKb` | {'int': 1109} |
| `chromeProcesses` | {'int': 1109} |
| `chromeProfiles` | {'int': 1109} |
| `chromeRendererMaxPssKb` | {'int': 1109} |
| `chromeRendererPssKb` | {'int': 1109} |
| `chromeRenderers` | {'int': 1109} |
| `chromeTabs` | {'int': 1109} |
| `chromeTabsProbedProfiles` | {'int': 1109} |
| `chromeUtilityPssKb` | {'int': 1109} |
| `desktopPssKb` | {'int': 1109} |
| `hostPssKb` | {'int': 1109} |
| `kind` | {'str': 1109} |
| `memAvailableKb` | {'int': 1109} |
| `memTotalKb` | {'int': 1109} |
| `otherPssKb` | {'int': 1109} |
| `processes` | {'int': 1109} |
| `pssFallbackProcesses` | {'int': 1109} |

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
| `cpuMillicores` | {'int': 215} |
| `display` | {'int': 220} |
| `kind` | {'str': 220} |
| `processes` | {'int': 220} |
| `pssKb` | {'int': 220} |
| `rendererMaxPssKb` | {'int': 220} |
| `renderers` | {'int': 220} |
| `tabs` | {'int': 220} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 76} |
| `failClosed` | {'bool': 76} |
| `kind` | {'str': 76} |
| `route` | {'str': 76} |
| `strict` | {'bool': 76} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
