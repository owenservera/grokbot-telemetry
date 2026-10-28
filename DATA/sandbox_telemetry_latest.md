# sandbox_telemetry_parse — 2026-10-28 23:16:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=27042 lines=106
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 40 |
| `chrome_profile_sample` | 33 |
| `egress_tunnel_connect` | 15 |
| `egress_tunnel_desktop` | 9 |
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
| `chromeBrowserPssKb` | {'int': 40} |
| `chromeGpuPssKb` | {'int': 40} |
| `chromeOtherPssKb` | {'int': 40} |
| `chromeProcesses` | {'int': 40} |
| `chromeProfiles` | {'int': 40} |
| `chromeRendererMaxPssKb` | {'int': 40} |
| `chromeRendererPssKb` | {'int': 40} |
| `chromeRenderers` | {'int': 40} |
| `chromeTabs` | {'int': 40} |
| `chromeTabsProbedProfiles` | {'int': 40} |
| `chromeUtilityPssKb` | {'int': 40} |
| `desktopPssKb` | {'int': 40} |
| `hostPssKb` | {'int': 40} |
| `kind` | {'str': 40} |
| `memAvailableKb` | {'int': 40} |
| `memTotalKb` | {'int': 40} |
| `otherPssKb` | {'int': 40} |
| `processes` | {'int': 40} |
| `pssFallbackProcesses` | {'int': 40} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 9} |
| `graceS` | {'int': 4} |
| `kind` | {'str': 9} |

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
| `cpuMillicores` | {'int': 32} |
| `display` | {'int': 33} |
| `kind` | {'str': 33} |
| `processes` | {'int': 33} |
| `pssKb` | {'int': 33} |
| `rendererMaxPssKb` | {'int': 33} |
| `renderers` | {'int': 33} |
| `tabs` | {'int': 33} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 15} |
| `failClosed` | {'bool': 15} |
| `kind` | {'str': 15} |
| `route` | {'str': 15} |
| `strict` | {'bool': 15} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
