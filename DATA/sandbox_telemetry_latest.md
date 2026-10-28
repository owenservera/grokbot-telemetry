# sandbox_telemetry_parse — 2026-10-28 21:21:30 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1322352 lines=2990
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2889 |
| `chrome_profile_sample` | 65 |
| `egress_tunnel_connect` | 18 |
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
| `chromeBrowserPssKb` | {'int': 2889} |
| `chromeGpuPssKb` | {'int': 2889} |
| `chromeOtherPssKb` | {'int': 2889} |
| `chromeProcesses` | {'int': 2889} |
| `chromeProfiles` | {'int': 2889} |
| `chromeRendererMaxPssKb` | {'int': 2889} |
| `chromeRendererPssKb` | {'int': 2889} |
| `chromeRenderers` | {'int': 2889} |
| `chromeTabs` | {'int': 2889} |
| `chromeTabsProbedProfiles` | {'int': 2889} |
| `chromeUtilityPssKb` | {'int': 2889} |
| `desktopPssKb` | {'int': 2889} |
| `hostPssKb` | {'int': 2889} |
| `kind` | {'str': 2889} |
| `memAvailableKb` | {'int': 2889} |
| `memTotalKb` | {'int': 2889} |
| `otherPssKb` | {'int': 2889} |
| `processes` | {'int': 2889} |
| `pssFallbackProcesses` | {'int': 2889} |

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
| `count` | {'int': 18} |
| `failClosed` | {'bool': 18} |
| `kind` | {'str': 18} |
| `route` | {'str': 18} |
| `strict` | {'bool': 18} |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 63} |
| `display` | {'int': 65} |
| `kind` | {'str': 65} |
| `processes` | {'int': 65} |
| `pssKb` | {'int': 65} |
| `rendererMaxPssKb` | {'int': 65} |
| `renderers` | {'int': 65} |
| `tabs` | {'int': 64} |

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
