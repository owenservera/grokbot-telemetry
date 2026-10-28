# sandbox_telemetry_parse — 2026-10-28 21:37:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1333483 lines=3027
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2906 |
| `chrome_profile_sample` | 82 |
| `egress_tunnel_connect` | 21 |
| `egress_tunnel_desktop` | 6 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `egress_time_zone` | 2 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `process_crash` | 1 |

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
| `chromeBrowserPssKb` | {'int': 2906} |
| `chromeGpuPssKb` | {'int': 2906} |
| `chromeOtherPssKb` | {'int': 2906} |
| `chromeProcesses` | {'int': 2906} |
| `chromeProfiles` | {'int': 2906} |
| `chromeRendererMaxPssKb` | {'int': 2906} |
| `chromeRendererPssKb` | {'int': 2906} |
| `chromeRenderers` | {'int': 2906} |
| `chromeTabs` | {'int': 2906} |
| `chromeTabsProbedProfiles` | {'int': 2906} |
| `chromeUtilityPssKb` | {'int': 2906} |
| `desktopPssKb` | {'int': 2906} |
| `hostPssKb` | {'int': 2906} |
| `kind` | {'str': 2906} |
| `memAvailableKb` | {'int': 2906} |
| `memTotalKb` | {'int': 2906} |
| `otherPssKb` | {'int': 2906} |
| `processes` | {'int': 2906} |
| `pssFallbackProcesses` | {'int': 2906} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 6} |
| `graceS` | {'int': 3} |
| `kind` | {'str': 6} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

### `egress_time_zone`

| key | types |
|-----|-------|
| `boxClockUtc` | {'bool': 2} |
| `kind` | {'str': 2} |
| `outcome` | {'str': 2} |
| `provider` | {'str': 2} |
| `source` | {'str': 2} |

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

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 21} |
| `failClosed` | {'bool': 21} |
| `kind` | {'str': 21} |
| `route` | {'str': 21} |
| `strict` | {'bool': 21} |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 80} |
| `display` | {'int': 82} |
| `kind` | {'str': 82} |
| `processes` | {'int': 82} |
| `pssKb` | {'int': 82} |
| `rendererMaxPssKb` | {'int': 82} |
| `renderers` | {'int': 82} |
| `tabs` | {'int': 81} |

### `process_crash`

| key | types |
|-----|-------|
| `binary` | {'str': 1} |
| `count` | {'int': 1} |
| `kind` | {'str': 1} |
| `signal` | {'str': 1} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
