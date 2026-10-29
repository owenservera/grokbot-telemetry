# sandbox_telemetry_parse — 2026-10-29 21:14:54 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=633951 lines=1771
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1227 |
| `chrome_profile_sample` | 327 |
| `egress_tunnel_connect` | 121 |
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
| `chromeBrowserPssKb` | {'int': 1227} |
| `chromeGpuPssKb` | {'int': 1227} |
| `chromeOtherPssKb` | {'int': 1227} |
| `chromeProcesses` | {'int': 1227} |
| `chromeProfiles` | {'int': 1227} |
| `chromeRendererMaxPssKb` | {'int': 1227} |
| `chromeRendererPssKb` | {'int': 1227} |
| `chromeRenderers` | {'int': 1227} |
| `chromeTabs` | {'int': 1227} |
| `chromeTabsProbedProfiles` | {'int': 1227} |
| `chromeUtilityPssKb` | {'int': 1227} |
| `desktopPssKb` | {'int': 1227} |
| `hostPssKb` | {'int': 1227} |
| `kind` | {'str': 1227} |
| `memAvailableKb` | {'int': 1227} |
| `memTotalKb` | {'int': 1227} |
| `otherPssKb` | {'int': 1227} |
| `processes` | {'int': 1227} |
| `pssFallbackProcesses` | {'int': 1227} |

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
| `cpuMillicores` | {'int': 321} |
| `display` | {'int': 327} |
| `kind` | {'str': 327} |
| `processes` | {'int': 327} |
| `pssKb` | {'int': 327} |
| `rendererMaxPssKb` | {'int': 327} |
| `renderers` | {'int': 327} |
| `tabs` | {'int': 327} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 121} |
| `failClosed` | {'bool': 121} |
| `kind` | {'str': 121} |
| `route` | {'str': 121} |
| `strict` | {'bool': 121} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
