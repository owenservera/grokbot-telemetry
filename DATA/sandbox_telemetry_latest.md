# sandbox_telemetry_parse — 2026-10-29 14:54:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=431674 lines=1129
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 873 |
| `chrome_profile_sample` | 154 |
| `egress_tunnel_connect` | 47 |
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
| `chromeBrowserPssKb` | {'int': 873} |
| `chromeGpuPssKb` | {'int': 873} |
| `chromeOtherPssKb` | {'int': 873} |
| `chromeProcesses` | {'int': 873} |
| `chromeProfiles` | {'int': 873} |
| `chromeRendererMaxPssKb` | {'int': 873} |
| `chromeRendererPssKb` | {'int': 873} |
| `chromeRenderers` | {'int': 873} |
| `chromeTabs` | {'int': 873} |
| `chromeTabsProbedProfiles` | {'int': 873} |
| `chromeUtilityPssKb` | {'int': 873} |
| `desktopPssKb` | {'int': 873} |
| `hostPssKb` | {'int': 873} |
| `kind` | {'str': 873} |
| `memAvailableKb` | {'int': 873} |
| `memTotalKb` | {'int': 873} |
| `otherPssKb` | {'int': 873} |
| `processes` | {'int': 873} |
| `pssFallbackProcesses` | {'int': 873} |

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
| `cpuMillicores` | {'int': 151} |
| `display` | {'int': 154} |
| `kind` | {'str': 154} |
| `processes` | {'int': 154} |
| `pssKb` | {'int': 154} |
| `rendererMaxPssKb` | {'int': 154} |
| `renderers` | {'int': 154} |
| `tabs` | {'int': 154} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 47} |
| `failClosed` | {'bool': 47} |
| `kind` | {'str': 47} |
| `route` | {'str': 47} |
| `strict` | {'bool': 47} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
