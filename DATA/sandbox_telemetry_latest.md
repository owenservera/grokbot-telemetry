# sandbox_telemetry_parse — 2026-10-28 23:38:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=40247 lines=157
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 59 |
| `chrome_profile_sample` | 52 |
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
| `chromeBrowserPssKb` | {'int': 59} |
| `chromeGpuPssKb` | {'int': 59} |
| `chromeOtherPssKb` | {'int': 59} |
| `chromeProcesses` | {'int': 59} |
| `chromeProfiles` | {'int': 59} |
| `chromeRendererMaxPssKb` | {'int': 59} |
| `chromeRendererPssKb` | {'int': 59} |
| `chromeRenderers` | {'int': 59} |
| `chromeTabs` | {'int': 59} |
| `chromeTabsProbedProfiles` | {'int': 59} |
| `chromeUtilityPssKb` | {'int': 59} |
| `desktopPssKb` | {'int': 59} |
| `hostPssKb` | {'int': 59} |
| `kind` | {'str': 59} |
| `memAvailableKb` | {'int': 59} |
| `memTotalKb` | {'int': 59} |
| `otherPssKb` | {'int': 59} |
| `processes` | {'int': 59} |
| `pssFallbackProcesses` | {'int': 59} |

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
| `cpuMillicores` | {'int': 51} |
| `display` | {'int': 52} |
| `kind` | {'str': 52} |
| `processes` | {'int': 52} |
| `pssKb` | {'int': 52} |
| `rendererMaxPssKb` | {'int': 52} |
| `renderers` | {'int': 52} |
| `tabs` | {'int': 52} |

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
