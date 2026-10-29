# sandbox_telemetry_parse — 2026-10-29 15:01:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=434934 lines=1140
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 878 |
| `chrome_profile_sample` | 159 |
| `egress_tunnel_connect` | 47 |
| `egress_tunnel_desktop` | 43 |
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
| `chromeBrowserPssKb` | {'int': 878} |
| `chromeGpuPssKb` | {'int': 878} |
| `chromeOtherPssKb` | {'int': 878} |
| `chromeProcesses` | {'int': 878} |
| `chromeProfiles` | {'int': 878} |
| `chromeRendererMaxPssKb` | {'int': 878} |
| `chromeRendererPssKb` | {'int': 878} |
| `chromeRenderers` | {'int': 878} |
| `chromeTabs` | {'int': 878} |
| `chromeTabsProbedProfiles` | {'int': 878} |
| `chromeUtilityPssKb` | {'int': 878} |
| `desktopPssKb` | {'int': 878} |
| `hostPssKb` | {'int': 878} |
| `kind` | {'str': 878} |
| `memAvailableKb` | {'int': 878} |
| `memTotalKb` | {'int': 878} |
| `otherPssKb` | {'int': 878} |
| `processes` | {'int': 878} |
| `pssFallbackProcesses` | {'int': 878} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 43} |
| `graceS` | {'int': 24} |
| `kind` | {'str': 43} |

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
| `cpuMillicores` | {'int': 156} |
| `display` | {'int': 159} |
| `kind` | {'str': 159} |
| `processes` | {'int': 159} |
| `pssKb` | {'int': 159} |
| `rendererMaxPssKb` | {'int': 159} |
| `renderers` | {'int': 159} |
| `tabs` | {'int': 159} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 47} |
| `failClosed` | {'bool': 47} |
| `kind` | {'str': 47} |
| `route` | {'str': 47} |
| `strict` | {'bool': 47} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
