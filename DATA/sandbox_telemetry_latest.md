# sandbox_telemetry_parse — 2026-10-29 21:19:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=635965 lines=1778
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1230 |
| `chrome_profile_sample` | 330 |
| `egress_tunnel_connect` | 122 |
| `egress_tunnel_desktop` | 77 |
| `chrome_launch` | 6 |
| `egress_time_zone` | 6 |
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
| `chromeBrowserPssKb` | {'int': 1230} |
| `chromeGpuPssKb` | {'int': 1230} |
| `chromeOtherPssKb` | {'int': 1230} |
| `chromeProcesses` | {'int': 1230} |
| `chromeProfiles` | {'int': 1230} |
| `chromeRendererMaxPssKb` | {'int': 1230} |
| `chromeRendererPssKb` | {'int': 1230} |
| `chromeRenderers` | {'int': 1230} |
| `chromeTabs` | {'int': 1230} |
| `chromeTabsProbedProfiles` | {'int': 1230} |
| `chromeUtilityPssKb` | {'int': 1230} |
| `desktopPssKb` | {'int': 1230} |
| `hostPssKb` | {'int': 1230} |
| `kind` | {'str': 1230} |
| `memAvailableKb` | {'int': 1230} |
| `memTotalKb` | {'int': 1230} |
| `otherPssKb` | {'int': 1230} |
| `processes` | {'int': 1230} |
| `pssFallbackProcesses` | {'int': 1230} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 77} |
| `graceS` | {'int': 44} |
| `kind` | {'str': 77} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 6} |
| `display` | {'int': 6} |
| `durationMs` | {'int': 6} |
| `kind` | {'str': 6} |
| `launcher` | {'int': 6} |
| `launcherSource` | {'str': 6} |
| `mode` | {'str': 6} |
| `outcome` | {'str': 6} |

### `egress_time_zone`

| key | types |
|-----|-------|
| `boxClockUtc` | {'bool': 6} |
| `kind` | {'str': 6} |
| `outcome` | {'str': 6} |
| `provider` | {'str': 6} |
| `source` | {'str': 6} |

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
| `cpuMillicores` | {'int': 324} |
| `display` | {'int': 330} |
| `kind` | {'str': 330} |
| `processes` | {'int': 330} |
| `pssKb` | {'int': 330} |
| `rendererMaxPssKb` | {'int': 330} |
| `renderers` | {'int': 330} |
| `tabs` | {'int': 330} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 122} |
| `failClosed` | {'bool': 122} |
| `kind` | {'str': 122} |
| `route` | {'str': 122} |
| `strict` | {'bool': 122} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
