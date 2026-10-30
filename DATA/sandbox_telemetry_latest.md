# sandbox_telemetry_parse — 2026-10-30 17:11:40 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1164614 lines=3123
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2307 |
| `chrome_profile_sample` | 521 |
| `egress_tunnel_connect` | 190 |
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
| `chromeBrowserPssKb` | {'int': 2307} |
| `chromeGpuPssKb` | {'int': 2307} |
| `chromeOtherPssKb` | {'int': 2307} |
| `chromeProcesses` | {'int': 2307} |
| `chromeProfiles` | {'int': 2307} |
| `chromeRendererMaxPssKb` | {'int': 2307} |
| `chromeRendererPssKb` | {'int': 2307} |
| `chromeRenderers` | {'int': 2307} |
| `chromeTabs` | {'int': 2307} |
| `chromeTabsProbedProfiles` | {'int': 2307} |
| `chromeUtilityPssKb` | {'int': 2307} |
| `desktopPssKb` | {'int': 2307} |
| `hostPssKb` | {'int': 2307} |
| `kind` | {'str': 2307} |
| `memAvailableKb` | {'int': 2307} |
| `memTotalKb` | {'int': 2307} |
| `otherPssKb` | {'int': 2307} |
| `processes` | {'int': 2307} |
| `pssFallbackProcesses` | {'int': 2307} |

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
| `cpuMillicores` | {'int': 512} |
| `display` | {'int': 521} |
| `kind` | {'str': 521} |
| `processes` | {'int': 521} |
| `pssKb` | {'int': 521} |
| `rendererMaxPssKb` | {'int': 521} |
| `renderers` | {'int': 521} |
| `tabs` | {'int': 521} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 190} |
| `failClosed` | {'bool': 190} |
| `kind` | {'str': 190} |
| `route` | {'str': 190} |
| `strict` | {'bool': 190} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
