# sandbox_telemetry_parse — 2026-10-28 21:02:14 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1309054 lines=2940
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2870 |
| `chrome_profile_sample` | 46 |
| `egress_tunnel_desktop` | 6 |
| `egress_tunnel_connect` | 6 |
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
| `chromeBrowserPssKb` | {'int': 2870} |
| `chromeGpuPssKb` | {'int': 2870} |
| `chromeOtherPssKb` | {'int': 2870} |
| `chromeProcesses` | {'int': 2870} |
| `chromeProfiles` | {'int': 2870} |
| `chromeRendererMaxPssKb` | {'int': 2870} |
| `chromeRendererPssKb` | {'int': 2870} |
| `chromeRenderers` | {'int': 2870} |
| `chromeTabs` | {'int': 2870} |
| `chromeTabsProbedProfiles` | {'int': 2870} |
| `chromeUtilityPssKb` | {'int': 2870} |
| `desktopPssKb` | {'int': 2870} |
| `hostPssKb` | {'int': 2870} |
| `kind` | {'str': 2870} |
| `memAvailableKb` | {'int': 2870} |
| `memTotalKb` | {'int': 2870} |
| `otherPssKb` | {'int': 2870} |
| `processes` | {'int': 2870} |
| `pssFallbackProcesses` | {'int': 2870} |

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
| `count` | {'int': 6} |
| `failClosed` | {'bool': 6} |
| `kind` | {'str': 6} |
| `route` | {'str': 6} |
| `strict` | {'bool': 6} |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 44} |
| `display` | {'int': 46} |
| `kind` | {'str': 46} |
| `processes` | {'int': 46} |
| `pssKb` | {'int': 46} |
| `rendererMaxPssKb` | {'int': 46} |
| `renderers` | {'int': 46} |
| `tabs` | {'int': 45} |

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
