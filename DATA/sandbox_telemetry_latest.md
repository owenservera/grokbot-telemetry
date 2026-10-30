# sandbox_telemetry_parse — 2026-10-30 16:42:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1138973 lines=3013
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2278 |
| `chrome_profile_sample` | 463 |
| `egress_tunnel_connect` | 167 |
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
| `chromeBrowserPssKb` | {'int': 2278} |
| `chromeGpuPssKb` | {'int': 2278} |
| `chromeOtherPssKb` | {'int': 2278} |
| `chromeProcesses` | {'int': 2278} |
| `chromeProfiles` | {'int': 2278} |
| `chromeRendererMaxPssKb` | {'int': 2278} |
| `chromeRendererPssKb` | {'int': 2278} |
| `chromeRenderers` | {'int': 2278} |
| `chromeTabs` | {'int': 2278} |
| `chromeTabsProbedProfiles` | {'int': 2278} |
| `chromeUtilityPssKb` | {'int': 2278} |
| `desktopPssKb` | {'int': 2278} |
| `hostPssKb` | {'int': 2278} |
| `kind` | {'str': 2278} |
| `memAvailableKb` | {'int': 2278} |
| `memTotalKb` | {'int': 2278} |
| `otherPssKb` | {'int': 2278} |
| `processes` | {'int': 2278} |
| `pssFallbackProcesses` | {'int': 2278} |

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
| `cpuMillicores` | {'int': 454} |
| `display` | {'int': 463} |
| `kind` | {'str': 463} |
| `processes` | {'int': 463} |
| `pssKb` | {'int': 463} |
| `rendererMaxPssKb` | {'int': 463} |
| `renderers` | {'int': 463} |
| `tabs` | {'int': 463} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 167} |
| `failClosed` | {'bool': 167} |
| `kind` | {'str': 167} |
| `route` | {'str': 167} |
| `strict` | {'bool': 167} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
