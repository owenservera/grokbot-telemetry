# sandbox_telemetry_parse — 2026-10-30 18:04:23 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1210755 lines=3322
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2359 |
| `chrome_profile_sample` | 625 |
| `egress_tunnel_connect` | 233 |
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
| `chromeBrowserPssKb` | {'int': 2359} |
| `chromeGpuPssKb` | {'int': 2359} |
| `chromeOtherPssKb` | {'int': 2359} |
| `chromeProcesses` | {'int': 2359} |
| `chromeProfiles` | {'int': 2359} |
| `chromeRendererMaxPssKb` | {'int': 2359} |
| `chromeRendererPssKb` | {'int': 2359} |
| `chromeRenderers` | {'int': 2359} |
| `chromeTabs` | {'int': 2359} |
| `chromeTabsProbedProfiles` | {'int': 2359} |
| `chromeUtilityPssKb` | {'int': 2359} |
| `desktopPssKb` | {'int': 2359} |
| `hostPssKb` | {'int': 2359} |
| `kind` | {'str': 2359} |
| `memAvailableKb` | {'int': 2359} |
| `memTotalKb` | {'int': 2359} |
| `otherPssKb` | {'int': 2359} |
| `processes` | {'int': 2359} |
| `pssFallbackProcesses` | {'int': 2359} |

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
| `cpuMillicores` | {'int': 616} |
| `display` | {'int': 625} |
| `kind` | {'str': 625} |
| `processes` | {'int': 625} |
| `pssKb` | {'int': 625} |
| `rendererMaxPssKb` | {'int': 625} |
| `renderers` | {'int': 625} |
| `tabs` | {'int': 625} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 233} |
| `failClosed` | {'bool': 233} |
| `kind` | {'str': 233} |
| `route` | {'str': 233} |
| `strict` | {'bool': 233} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
