# sandbox_telemetry_parse — 2026-10-28 23:43:30 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=43748 lines=171
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 64 |
| `chrome_profile_sample` | 57 |
| `egress_tunnel_connect` | 25 |
| `egress_tunnel_desktop` | 16 |
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
| `chromeBrowserPssKb` | {'int': 64} |
| `chromeGpuPssKb` | {'int': 64} |
| `chromeOtherPssKb` | {'int': 64} |
| `chromeProcesses` | {'int': 64} |
| `chromeProfiles` | {'int': 64} |
| `chromeRendererMaxPssKb` | {'int': 64} |
| `chromeRendererPssKb` | {'int': 64} |
| `chromeRenderers` | {'int': 64} |
| `chromeTabs` | {'int': 64} |
| `chromeTabsProbedProfiles` | {'int': 64} |
| `chromeUtilityPssKb` | {'int': 64} |
| `desktopPssKb` | {'int': 64} |
| `hostPssKb` | {'int': 64} |
| `kind` | {'str': 64} |
| `memAvailableKb` | {'int': 64} |
| `memTotalKb` | {'int': 64} |
| `otherPssKb` | {'int': 64} |
| `processes` | {'int': 64} |
| `pssFallbackProcesses` | {'int': 64} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 16} |
| `graceS` | {'int': 8} |
| `kind` | {'str': 16} |

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
| `cpuMillicores` | {'int': 56} |
| `display` | {'int': 57} |
| `kind` | {'str': 57} |
| `processes` | {'int': 57} |
| `pssKb` | {'int': 57} |
| `rendererMaxPssKb` | {'int': 57} |
| `renderers` | {'int': 57} |
| `tabs` | {'int': 57} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 25} |
| `failClosed` | {'bool': 25} |
| `kind` | {'str': 25} |
| `route` | {'str': 25} |
| `strict` | {'bool': 25} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
