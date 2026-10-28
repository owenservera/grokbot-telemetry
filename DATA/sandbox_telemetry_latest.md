# sandbox_telemetry_parse — 2026-10-28 23:03:21 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=18307 lines=75
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 27 |
| `chrome_profile_sample` | 20 |
| `egress_tunnel_connect` | 11 |
| `egress_tunnel_desktop` | 8 |
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
| `chromeBrowserPssKb` | {'int': 27} |
| `chromeGpuPssKb` | {'int': 27} |
| `chromeOtherPssKb` | {'int': 27} |
| `chromeProcesses` | {'int': 27} |
| `chromeProfiles` | {'int': 27} |
| `chromeRendererMaxPssKb` | {'int': 27} |
| `chromeRendererPssKb` | {'int': 27} |
| `chromeRenderers` | {'int': 27} |
| `chromeTabs` | {'int': 27} |
| `chromeTabsProbedProfiles` | {'int': 27} |
| `chromeUtilityPssKb` | {'int': 27} |
| `desktopPssKb` | {'int': 27} |
| `hostPssKb` | {'int': 27} |
| `kind` | {'str': 27} |
| `memAvailableKb` | {'int': 27} |
| `memTotalKb` | {'int': 27} |
| `otherPssKb` | {'int': 27} |
| `processes` | {'int': 27} |
| `pssFallbackProcesses` | {'int': 27} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 8} |
| `graceS` | {'int': 4} |
| `kind` | {'str': 8} |

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

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 19} |
| `display` | {'int': 20} |
| `kind` | {'str': 20} |
| `processes` | {'int': 20} |
| `pssKb` | {'int': 20} |
| `rendererMaxPssKb` | {'int': 20} |
| `renderers` | {'int': 20} |
| `tabs` | {'int': 20} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 11} |
| `failClosed` | {'bool': 11} |
| `kind` | {'str': 11} |
| `route` | {'str': 11} |
| `strict` | {'bool': 11} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
