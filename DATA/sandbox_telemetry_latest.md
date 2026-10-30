# sandbox_telemetry_parse — 2026-10-30 12:23:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1019334 lines=2688
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2045 |
| `chrome_profile_sample` | 396 |
| `egress_tunnel_connect` | 144 |
| `egress_tunnel_desktop` | 82 |
| `chrome_launch` | 7 |
| `egress_time_zone` | 7 |
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
| `chromeBrowserPssKb` | {'int': 2045} |
| `chromeGpuPssKb` | {'int': 2045} |
| `chromeOtherPssKb` | {'int': 2045} |
| `chromeProcesses` | {'int': 2045} |
| `chromeProfiles` | {'int': 2045} |
| `chromeRendererMaxPssKb` | {'int': 2045} |
| `chromeRendererPssKb` | {'int': 2045} |
| `chromeRenderers` | {'int': 2045} |
| `chromeTabs` | {'int': 2045} |
| `chromeTabsProbedProfiles` | {'int': 2045} |
| `chromeUtilityPssKb` | {'int': 2045} |
| `desktopPssKb` | {'int': 2045} |
| `hostPssKb` | {'int': 2045} |
| `kind` | {'str': 2045} |
| `memAvailableKb` | {'int': 2045} |
| `memTotalKb` | {'int': 2045} |
| `otherPssKb` | {'int': 2045} |
| `processes` | {'int': 2045} |
| `pssFallbackProcesses` | {'int': 2045} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 82} |
| `graceS` | {'int': 47} |
| `kind` | {'str': 82} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 7} |
| `display` | {'int': 7} |
| `durationMs` | {'int': 7} |
| `kind` | {'str': 7} |
| `launcher` | {'int': 7} |
| `launcherSource` | {'str': 7} |
| `mode` | {'str': 7} |
| `outcome` | {'str': 7} |

### `egress_time_zone`

| key | types |
|-----|-------|
| `boxClockUtc` | {'bool': 7} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `provider` | {'str': 7} |
| `source` | {'str': 7} |

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
| `cpuMillicores` | {'int': 389} |
| `display` | {'int': 396} |
| `kind` | {'str': 396} |
| `processes` | {'int': 396} |
| `pssKb` | {'int': 396} |
| `rendererMaxPssKb` | {'int': 396} |
| `renderers` | {'int': 396} |
| `tabs` | {'int': 396} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 144} |
| `failClosed` | {'bool': 144} |
| `kind` | {'str': 144} |
| `route` | {'str': 144} |
| `strict` | {'bool': 144} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
