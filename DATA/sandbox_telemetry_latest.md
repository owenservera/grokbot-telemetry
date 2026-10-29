# sandbox_telemetry_parse — 2026-10-29 13:22:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=376526 lines=946
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 785 |
| `chrome_profile_sample` | 82 |
| `egress_tunnel_connect` | 35 |
| `egress_tunnel_desktop` | 33 |
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
| `chromeBrowserPssKb` | {'int': 785} |
| `chromeGpuPssKb` | {'int': 785} |
| `chromeOtherPssKb` | {'int': 785} |
| `chromeProcesses` | {'int': 785} |
| `chromeProfiles` | {'int': 785} |
| `chromeRendererMaxPssKb` | {'int': 785} |
| `chromeRendererPssKb` | {'int': 785} |
| `chromeRenderers` | {'int': 785} |
| `chromeTabs` | {'int': 785} |
| `chromeTabsProbedProfiles` | {'int': 785} |
| `chromeUtilityPssKb` | {'int': 785} |
| `desktopPssKb` | {'int': 785} |
| `hostPssKb` | {'int': 785} |
| `kind` | {'str': 785} |
| `memAvailableKb` | {'int': 785} |
| `memTotalKb` | {'int': 785} |
| `otherPssKb` | {'int': 785} |
| `processes` | {'int': 785} |
| `pssFallbackProcesses` | {'int': 785} |

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
| `cpuMillicores` | {'int': 80} |
| `display` | {'int': 82} |
| `kind` | {'str': 82} |
| `processes` | {'int': 82} |
| `pssKb` | {'int': 82} |
| `rendererMaxPssKb` | {'int': 82} |
| `renderers` | {'int': 82} |
| `tabs` | {'int': 82} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 35} |
| `failClosed` | {'bool': 35} |
| `kind` | {'str': 35} |
| `route` | {'str': 35} |
| `strict` | {'bool': 35} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
