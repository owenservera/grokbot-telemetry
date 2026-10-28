# sandbox_telemetry_parse — 2026-10-28 22:10:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=12673 lines=52
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 19 |
| `chrome_profile_sample` | 12 |
| `egress_tunnel_connect` | 8 |
| `egress_tunnel_desktop` | 4 |
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
| `chromeBrowserPssKb` | {'int': 19} |
| `chromeGpuPssKb` | {'int': 19} |
| `chromeOtherPssKb` | {'int': 19} |
| `chromeProcesses` | {'int': 19} |
| `chromeProfiles` | {'int': 19} |
| `chromeRendererMaxPssKb` | {'int': 19} |
| `chromeRendererPssKb` | {'int': 19} |
| `chromeRenderers` | {'int': 19} |
| `chromeTabs` | {'int': 19} |
| `chromeTabsProbedProfiles` | {'int': 19} |
| `chromeUtilityPssKb` | {'int': 19} |
| `desktopPssKb` | {'int': 19} |
| `hostPssKb` | {'int': 19} |
| `kind` | {'str': 19} |
| `memAvailableKb` | {'int': 19} |
| `memTotalKb` | {'int': 19} |
| `otherPssKb` | {'int': 19} |
| `processes` | {'int': 19} |
| `pssFallbackProcesses` | {'int': 19} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 4} |
| `graceS` | {'int': 2} |
| `kind` | {'str': 4} |

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
| `cpuMillicores` | {'int': 11} |
| `display` | {'int': 12} |
| `kind` | {'str': 12} |
| `processes` | {'int': 12} |
| `pssKb` | {'int': 12} |
| `rendererMaxPssKb` | {'int': 12} |
| `renderers` | {'int': 12} |
| `tabs` | {'int': 12} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 8} |
| `failClosed` | {'bool': 8} |
| `kind` | {'str': 8} |
| `route` | {'str': 8} |
| `strict` | {'bool': 8} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
