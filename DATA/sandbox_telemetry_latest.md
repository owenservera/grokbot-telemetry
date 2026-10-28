# sandbox_telemetry_parse — 2026-10-28 23:21:05 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=30527 lines=119
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 45 |
| `chrome_profile_sample` | 38 |
| `egress_tunnel_connect` | 18 |
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
| `chromeBrowserPssKb` | {'int': 45} |
| `chromeGpuPssKb` | {'int': 45} |
| `chromeOtherPssKb` | {'int': 45} |
| `chromeProcesses` | {'int': 45} |
| `chromeProfiles` | {'int': 45} |
| `chromeRendererMaxPssKb` | {'int': 45} |
| `chromeRendererPssKb` | {'int': 45} |
| `chromeRenderers` | {'int': 45} |
| `chromeTabs` | {'int': 45} |
| `chromeTabsProbedProfiles` | {'int': 45} |
| `chromeUtilityPssKb` | {'int': 45} |
| `desktopPssKb` | {'int': 45} |
| `hostPssKb` | {'int': 45} |
| `kind` | {'str': 45} |
| `memAvailableKb` | {'int': 45} |
| `memTotalKb` | {'int': 45} |
| `otherPssKb` | {'int': 45} |
| `processes` | {'int': 45} |
| `pssFallbackProcesses` | {'int': 45} |

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
| `cpuMillicores` | {'int': 37} |
| `display` | {'int': 38} |
| `kind` | {'str': 38} |
| `processes` | {'int': 38} |
| `pssKb` | {'int': 38} |
| `rendererMaxPssKb` | {'int': 38} |
| `renderers` | {'int': 38} |
| `tabs` | {'int': 38} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 18} |
| `failClosed` | {'bool': 18} |
| `kind` | {'str': 18} |
| `route` | {'str': 18} |
| `strict` | {'bool': 18} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
