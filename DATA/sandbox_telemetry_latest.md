# sandbox_telemetry_parse — 2026-10-28 23:46:26 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=45760 lines=178
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 67 |
| `chrome_profile_sample` | 60 |
| `egress_tunnel_connect` | 26 |
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
| `chromeBrowserPssKb` | {'int': 67} |
| `chromeGpuPssKb` | {'int': 67} |
| `chromeOtherPssKb` | {'int': 67} |
| `chromeProcesses` | {'int': 67} |
| `chromeProfiles` | {'int': 67} |
| `chromeRendererMaxPssKb` | {'int': 67} |
| `chromeRendererPssKb` | {'int': 67} |
| `chromeRenderers` | {'int': 67} |
| `chromeTabs` | {'int': 67} |
| `chromeTabsProbedProfiles` | {'int': 67} |
| `chromeUtilityPssKb` | {'int': 67} |
| `desktopPssKb` | {'int': 67} |
| `hostPssKb` | {'int': 67} |
| `kind` | {'str': 67} |
| `memAvailableKb` | {'int': 67} |
| `memTotalKb` | {'int': 67} |
| `otherPssKb` | {'int': 67} |
| `processes` | {'int': 67} |
| `pssFallbackProcesses` | {'int': 67} |

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
| `cpuMillicores` | {'int': 59} |
| `display` | {'int': 60} |
| `kind` | {'str': 60} |
| `processes` | {'int': 60} |
| `pssKb` | {'int': 60} |
| `rendererMaxPssKb` | {'int': 60} |
| `renderers` | {'int': 60} |
| `tabs` | {'int': 60} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 26} |
| `failClosed` | {'bool': 26} |
| `kind` | {'str': 26} |
| `route` | {'str': 26} |
| `strict` | {'bool': 26} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
