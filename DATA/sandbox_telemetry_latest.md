# sandbox_telemetry_parse — 2026-10-30 16:45:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1140781 lines=3021
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2280 |
| `chrome_profile_sample` | 467 |
| `egress_tunnel_connect` | 169 |
| `egress_tunnel_desktop` | 82 |
| `chrome_launch` | 8 |
| `egress_time_zone` | 8 |
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
| `chromeBrowserPssKb` | {'int': 2280} |
| `chromeGpuPssKb` | {'int': 2280} |
| `chromeOtherPssKb` | {'int': 2280} |
| `chromeProcesses` | {'int': 2280} |
| `chromeProfiles` | {'int': 2280} |
| `chromeRendererMaxPssKb` | {'int': 2280} |
| `chromeRendererPssKb` | {'int': 2280} |
| `chromeRenderers` | {'int': 2280} |
| `chromeTabs` | {'int': 2280} |
| `chromeTabsProbedProfiles` | {'int': 2280} |
| `chromeUtilityPssKb` | {'int': 2280} |
| `desktopPssKb` | {'int': 2280} |
| `hostPssKb` | {'int': 2280} |
| `kind` | {'str': 2280} |
| `memAvailableKb` | {'int': 2280} |
| `memTotalKb` | {'int': 2280} |
| `otherPssKb` | {'int': 2280} |
| `processes` | {'int': 2280} |
| `pssFallbackProcesses` | {'int': 2280} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 82} |
| `graceS` | {'int': 47} |
| `kind` | {'str': 82} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 8} |
| `display` | {'int': 8} |
| `durationMs` | {'int': 8} |
| `kind` | {'str': 8} |
| `launcher` | {'int': 8} |
| `launcherSource` | {'str': 8} |
| `mode` | {'str': 8} |
| `outcome` | {'str': 8} |

### `egress_time_zone`

| key | types |
|-----|-------|
| `boxClockUtc` | {'bool': 8} |
| `kind` | {'str': 8} |
| `outcome` | {'str': 8} |
| `provider` | {'str': 8} |
| `source` | {'str': 8} |

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
| `cpuMillicores` | {'int': 458} |
| `display` | {'int': 467} |
| `kind` | {'str': 467} |
| `processes` | {'int': 467} |
| `pssKb` | {'int': 467} |
| `rendererMaxPssKb` | {'int': 467} |
| `renderers` | {'int': 467} |
| `tabs` | {'int': 467} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 169} |
| `failClosed` | {'bool': 169} |
| `kind` | {'str': 169} |
| `route` | {'str': 169} |
| `strict` | {'bool': 169} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
