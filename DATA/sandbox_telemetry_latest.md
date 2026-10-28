# sandbox_telemetry_parse — 2026-10-28 23:41:26 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=42164 lines=163
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 62 |
| `chrome_profile_sample` | 55 |
| `egress_tunnel_connect` | 23 |
| `egress_tunnel_desktop` | 14 |
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
| `chromeBrowserPssKb` | {'int': 62} |
| `chromeGpuPssKb` | {'int': 62} |
| `chromeOtherPssKb` | {'int': 62} |
| `chromeProcesses` | {'int': 62} |
| `chromeProfiles` | {'int': 62} |
| `chromeRendererMaxPssKb` | {'int': 62} |
| `chromeRendererPssKb` | {'int': 62} |
| `chromeRenderers` | {'int': 62} |
| `chromeTabs` | {'int': 62} |
| `chromeTabsProbedProfiles` | {'int': 62} |
| `chromeUtilityPssKb` | {'int': 62} |
| `desktopPssKb` | {'int': 62} |
| `hostPssKb` | {'int': 62} |
| `kind` | {'str': 62} |
| `memAvailableKb` | {'int': 62} |
| `memTotalKb` | {'int': 62} |
| `otherPssKb` | {'int': 62} |
| `processes` | {'int': 62} |
| `pssFallbackProcesses` | {'int': 62} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 14} |
| `graceS` | {'int': 7} |
| `kind` | {'str': 14} |

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
| `cpuMillicores` | {'int': 54} |
| `display` | {'int': 55} |
| `kind` | {'str': 55} |
| `processes` | {'int': 55} |
| `pssKb` | {'int': 55} |
| `rendererMaxPssKb` | {'int': 55} |
| `renderers` | {'int': 55} |
| `tabs` | {'int': 55} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 23} |
| `failClosed` | {'bool': 23} |
| `kind` | {'str': 23} |
| `route` | {'str': 23} |
| `strict` | {'bool': 23} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
