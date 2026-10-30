# sandbox_telemetry_parse — 2026-10-30 18:13:36 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1218772 lines=3357
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2368 |
| `chrome_profile_sample` | 643 |
| `egress_tunnel_connect` | 240 |
| `egress_tunnel_desktop` | 83 |
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
| `chromeBrowserPssKb` | {'int': 2368} |
| `chromeGpuPssKb` | {'int': 2368} |
| `chromeOtherPssKb` | {'int': 2368} |
| `chromeProcesses` | {'int': 2368} |
| `chromeProfiles` | {'int': 2368} |
| `chromeRendererMaxPssKb` | {'int': 2368} |
| `chromeRendererPssKb` | {'int': 2368} |
| `chromeRenderers` | {'int': 2368} |
| `chromeTabs` | {'int': 2368} |
| `chromeTabsProbedProfiles` | {'int': 2368} |
| `chromeUtilityPssKb` | {'int': 2368} |
| `desktopPssKb` | {'int': 2368} |
| `hostPssKb` | {'int': 2368} |
| `kind` | {'str': 2368} |
| `memAvailableKb` | {'int': 2368} |
| `memTotalKb` | {'int': 2368} |
| `otherPssKb` | {'int': 2368} |
| `processes` | {'int': 2368} |
| `pssFallbackProcesses` | {'int': 2368} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 83} |
| `graceS` | {'int': 47} |
| `kind` | {'str': 83} |

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
| `cpuMillicores` | {'int': 634} |
| `display` | {'int': 643} |
| `kind` | {'str': 643} |
| `processes` | {'int': 643} |
| `pssKb` | {'int': 643} |
| `rendererMaxPssKb` | {'int': 643} |
| `renderers` | {'int': 643} |
| `tabs` | {'int': 643} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 240} |
| `failClosed` | {'bool': 240} |
| `kind` | {'str': 240} |
| `route` | {'str': 240} |
| `strict` | {'bool': 240} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
