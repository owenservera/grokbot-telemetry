# sandbox_telemetry_parse — 2026-10-29 20:30:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=604472 lines=1669
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1183 |
| `chrome_profile_sample` | 283 |
| `egress_tunnel_connect` | 107 |
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
| `chromeBrowserPssKb` | {'int': 1183} |
| `chromeGpuPssKb` | {'int': 1183} |
| `chromeOtherPssKb` | {'int': 1183} |
| `chromeProcesses` | {'int': 1183} |
| `chromeProfiles` | {'int': 1183} |
| `chromeRendererMaxPssKb` | {'int': 1183} |
| `chromeRendererPssKb` | {'int': 1183} |
| `chromeRenderers` | {'int': 1183} |
| `chromeTabs` | {'int': 1183} |
| `chromeTabsProbedProfiles` | {'int': 1183} |
| `chromeUtilityPssKb` | {'int': 1183} |
| `desktopPssKb` | {'int': 1183} |
| `hostPssKb` | {'int': 1183} |
| `kind` | {'str': 1183} |
| `memAvailableKb` | {'int': 1183} |
| `memTotalKb` | {'int': 1183} |
| `otherPssKb` | {'int': 1183} |
| `processes` | {'int': 1183} |
| `pssFallbackProcesses` | {'int': 1183} |

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
| `cpuMillicores` | {'int': 277} |
| `display` | {'int': 283} |
| `kind` | {'str': 283} |
| `processes` | {'int': 283} |
| `pssKb` | {'int': 283} |
| `rendererMaxPssKb` | {'int': 283} |
| `renderers` | {'int': 283} |
| `tabs` | {'int': 283} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 107} |
| `failClosed` | {'bool': 107} |
| `kind` | {'str': 107} |
| `route` | {'str': 107} |
| `strict` | {'bool': 107} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
