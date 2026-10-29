# sandbox_telemetry_parse — 2026-10-29 16:46:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=482238 lines=1271
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 972 |
| `chrome_profile_sample` | 176 |
| `egress_tunnel_connect` | 56 |
| `egress_tunnel_desktop` | 52 |
| `chrome_launch` | 4 |
| `egress_time_zone` | 4 |
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
| `chromeBrowserPssKb` | {'int': 972} |
| `chromeGpuPssKb` | {'int': 972} |
| `chromeOtherPssKb` | {'int': 972} |
| `chromeProcesses` | {'int': 972} |
| `chromeProfiles` | {'int': 972} |
| `chromeRendererMaxPssKb` | {'int': 972} |
| `chromeRendererPssKb` | {'int': 972} |
| `chromeRenderers` | {'int': 972} |
| `chromeTabs` | {'int': 972} |
| `chromeTabsProbedProfiles` | {'int': 972} |
| `chromeUtilityPssKb` | {'int': 972} |
| `desktopPssKb` | {'int': 972} |
| `hostPssKb` | {'int': 972} |
| `kind` | {'str': 972} |
| `memAvailableKb` | {'int': 972} |
| `memTotalKb` | {'int': 972} |
| `otherPssKb` | {'int': 972} |
| `processes` | {'int': 972} |
| `pssFallbackProcesses` | {'int': 972} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 52} |
| `graceS` | {'int': 29} |
| `kind` | {'str': 52} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 4} |
| `display` | {'int': 4} |
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `launcher` | {'int': 4} |
| `launcherSource` | {'str': 4} |
| `mode` | {'str': 4} |
| `outcome` | {'str': 4} |

### `egress_time_zone`

| key | types |
|-----|-------|
| `boxClockUtc` | {'bool': 4} |
| `kind` | {'str': 4} |
| `outcome` | {'str': 4} |
| `provider` | {'str': 4} |
| `source` | {'str': 4} |

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
| `cpuMillicores` | {'int': 172} |
| `display` | {'int': 176} |
| `kind` | {'str': 176} |
| `processes` | {'int': 176} |
| `pssKb` | {'int': 176} |
| `rendererMaxPssKb` | {'int': 176} |
| `renderers` | {'int': 176} |
| `tabs` | {'int': 176} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 56} |
| `failClosed` | {'bool': 56} |
| `kind` | {'str': 56} |
| `route` | {'str': 56} |
| `strict` | {'bool': 56} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
