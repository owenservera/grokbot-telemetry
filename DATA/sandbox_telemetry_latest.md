# sandbox_telemetry_parse — 2026-10-29 14:51:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=428924 lines=1119
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 869 |
| `chrome_profile_sample` | 150 |
| `egress_tunnel_connect` | 45 |
| `egress_tunnel_desktop` | 42 |
| `boot_stage` | 3 |
| `chrome_launch` | 3 |
| `egress_time_zone` | 3 |
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
| `chromeBrowserPssKb` | {'int': 869} |
| `chromeGpuPssKb` | {'int': 869} |
| `chromeOtherPssKb` | {'int': 869} |
| `chromeProcesses` | {'int': 869} |
| `chromeProfiles` | {'int': 869} |
| `chromeRendererMaxPssKb` | {'int': 869} |
| `chromeRendererPssKb` | {'int': 869} |
| `chromeRenderers` | {'int': 869} |
| `chromeTabs` | {'int': 869} |
| `chromeTabsProbedProfiles` | {'int': 869} |
| `chromeUtilityPssKb` | {'int': 869} |
| `desktopPssKb` | {'int': 869} |
| `hostPssKb` | {'int': 869} |
| `kind` | {'str': 869} |
| `memAvailableKb` | {'int': 869} |
| `memTotalKb` | {'int': 869} |
| `otherPssKb` | {'int': 869} |
| `processes` | {'int': 869} |
| `pssFallbackProcesses` | {'int': 869} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 42} |
| `graceS` | {'int': 23} |
| `kind` | {'str': 42} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `display` | {'int': 3} |
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `launcher` | {'int': 3} |
| `launcherSource` | {'str': 3} |
| `mode` | {'str': 3} |
| `outcome` | {'str': 3} |

### `egress_time_zone`

| key | types |
|-----|-------|
| `boxClockUtc` | {'bool': 3} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `provider` | {'str': 3} |
| `source` | {'str': 3} |

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
| `cpuMillicores` | {'int': 147} |
| `display` | {'int': 150} |
| `kind` | {'str': 150} |
| `processes` | {'int': 150} |
| `pssKb` | {'int': 150} |
| `rendererMaxPssKb` | {'int': 150} |
| `renderers` | {'int': 150} |
| `tabs` | {'int': 150} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 45} |
| `failClosed` | {'bool': 45} |
| `kind` | {'str': 45} |
| `route` | {'str': 45} |
| `strict` | {'bool': 45} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
