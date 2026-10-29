# sandbox_telemetry_parse — 2026-10-29 14:15:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=409633 lines=1055
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 836 |
| `chrome_profile_sample` | 133 |
| `egress_tunnel_connect` | 38 |
| `egress_tunnel_desktop` | 37 |
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
| `chromeBrowserPssKb` | {'int': 836} |
| `chromeGpuPssKb` | {'int': 836} |
| `chromeOtherPssKb` | {'int': 836} |
| `chromeProcesses` | {'int': 836} |
| `chromeProfiles` | {'int': 836} |
| `chromeRendererMaxPssKb` | {'int': 836} |
| `chromeRendererPssKb` | {'int': 836} |
| `chromeRenderers` | {'int': 836} |
| `chromeTabs` | {'int': 836} |
| `chromeTabsProbedProfiles` | {'int': 836} |
| `chromeUtilityPssKb` | {'int': 836} |
| `desktopPssKb` | {'int': 836} |
| `hostPssKb` | {'int': 836} |
| `kind` | {'str': 836} |
| `memAvailableKb` | {'int': 836} |
| `memTotalKb` | {'int': 836} |
| `otherPssKb` | {'int': 836} |
| `processes` | {'int': 836} |
| `pssFallbackProcesses` | {'int': 836} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 37} |
| `graceS` | {'int': 20} |
| `kind` | {'str': 37} |

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
| `cpuMillicores` | {'int': 131} |
| `display` | {'int': 133} |
| `kind` | {'str': 133} |
| `processes` | {'int': 133} |
| `pssKb` | {'int': 133} |
| `rendererMaxPssKb` | {'int': 133} |
| `renderers` | {'int': 133} |
| `tabs` | {'int': 133} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 38} |
| `failClosed` | {'bool': 38} |
| `kind` | {'str': 38} |
| `route` | {'str': 38} |
| `strict` | {'bool': 38} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
