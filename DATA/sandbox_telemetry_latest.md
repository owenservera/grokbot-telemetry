# sandbox_telemetry_parse — 2026-10-29 13:17:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=373138 lines=934
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 780 |
| `chrome_profile_sample` | 77 |
| `egress_tunnel_desktop` | 33 |
| `egress_tunnel_connect` | 33 |
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
| `chromeBrowserPssKb` | {'int': 780} |
| `chromeGpuPssKb` | {'int': 780} |
| `chromeOtherPssKb` | {'int': 780} |
| `chromeProcesses` | {'int': 780} |
| `chromeProfiles` | {'int': 780} |
| `chromeRendererMaxPssKb` | {'int': 780} |
| `chromeRendererPssKb` | {'int': 780} |
| `chromeRenderers` | {'int': 780} |
| `chromeTabs` | {'int': 780} |
| `chromeTabsProbedProfiles` | {'int': 780} |
| `chromeUtilityPssKb` | {'int': 780} |
| `desktopPssKb` | {'int': 780} |
| `hostPssKb` | {'int': 780} |
| `kind` | {'str': 780} |
| `memAvailableKb` | {'int': 780} |
| `memTotalKb` | {'int': 780} |
| `otherPssKb` | {'int': 780} |
| `processes` | {'int': 780} |
| `pssFallbackProcesses` | {'int': 780} |

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
| `cpuMillicores` | {'int': 75} |
| `display` | {'int': 77} |
| `kind` | {'str': 77} |
| `processes` | {'int': 77} |
| `pssKb` | {'int': 77} |
| `rendererMaxPssKb` | {'int': 77} |
| `renderers` | {'int': 77} |
| `tabs` | {'int': 77} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 33} |
| `failClosed` | {'bool': 33} |
| `kind` | {'str': 33} |
| `route` | {'str': 33} |
| `strict` | {'bool': 33} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
