# sandbox_telemetry_parse — 2026-10-29 16:49:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=484463 lines=1281
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 975 |
| `chrome_profile_sample` | 179 |
| `egress_tunnel_connect` | 58 |
| `egress_tunnel_desktop` | 54 |
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
| `chromeBrowserPssKb` | {'int': 975} |
| `chromeGpuPssKb` | {'int': 975} |
| `chromeOtherPssKb` | {'int': 975} |
| `chromeProcesses` | {'int': 975} |
| `chromeProfiles` | {'int': 975} |
| `chromeRendererMaxPssKb` | {'int': 975} |
| `chromeRendererPssKb` | {'int': 975} |
| `chromeRenderers` | {'int': 975} |
| `chromeTabs` | {'int': 975} |
| `chromeTabsProbedProfiles` | {'int': 975} |
| `chromeUtilityPssKb` | {'int': 975} |
| `desktopPssKb` | {'int': 975} |
| `hostPssKb` | {'int': 975} |
| `kind` | {'str': 975} |
| `memAvailableKb` | {'int': 975} |
| `memTotalKb` | {'int': 975} |
| `otherPssKb` | {'int': 975} |
| `processes` | {'int': 975} |
| `pssFallbackProcesses` | {'int': 975} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 54} |
| `graceS` | {'int': 30} |
| `kind` | {'str': 54} |

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
| `cpuMillicores` | {'int': 175} |
| `display` | {'int': 179} |
| `kind` | {'str': 179} |
| `processes` | {'int': 179} |
| `pssKb` | {'int': 179} |
| `rendererMaxPssKb` | {'int': 179} |
| `renderers` | {'int': 179} |
| `tabs` | {'int': 179} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 58} |
| `failClosed` | {'bool': 58} |
| `kind` | {'str': 58} |
| `route` | {'str': 58} |
| `strict` | {'bool': 58} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
