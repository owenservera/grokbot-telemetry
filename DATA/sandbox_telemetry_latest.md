# sandbox_telemetry_parse — 2026-10-29 19:08:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=553991 lines=1483
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1107 |
| `chrome_profile_sample` | 218 |
| `egress_tunnel_connect` | 75 |
| `egress_tunnel_desktop` | 66 |
| `chrome_launch` | 5 |
| `egress_time_zone` | 5 |
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
| `chromeBrowserPssKb` | {'int': 1107} |
| `chromeGpuPssKb` | {'int': 1107} |
| `chromeOtherPssKb` | {'int': 1107} |
| `chromeProcesses` | {'int': 1107} |
| `chromeProfiles` | {'int': 1107} |
| `chromeRendererMaxPssKb` | {'int': 1107} |
| `chromeRendererPssKb` | {'int': 1107} |
| `chromeRenderers` | {'int': 1107} |
| `chromeTabs` | {'int': 1107} |
| `chromeTabsProbedProfiles` | {'int': 1107} |
| `chromeUtilityPssKb` | {'int': 1107} |
| `desktopPssKb` | {'int': 1107} |
| `hostPssKb` | {'int': 1107} |
| `kind` | {'str': 1107} |
| `memAvailableKb` | {'int': 1107} |
| `memTotalKb` | {'int': 1107} |
| `otherPssKb` | {'int': 1107} |
| `processes` | {'int': 1107} |
| `pssFallbackProcesses` | {'int': 1107} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 66} |
| `graceS` | {'int': 37} |
| `kind` | {'str': 66} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 5} |
| `display` | {'int': 5} |
| `durationMs` | {'int': 5} |
| `kind` | {'str': 5} |
| `launcher` | {'int': 5} |
| `launcherSource` | {'str': 5} |
| `mode` | {'str': 5} |
| `outcome` | {'str': 5} |

### `egress_time_zone`

| key | types |
|-----|-------|
| `boxClockUtc` | {'bool': 5} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `provider` | {'str': 5} |
| `source` | {'str': 5} |

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
| `cpuMillicores` | {'int': 213} |
| `display` | {'int': 218} |
| `kind` | {'str': 218} |
| `processes` | {'int': 218} |
| `pssKb` | {'int': 218} |
| `rendererMaxPssKb` | {'int': 218} |
| `renderers` | {'int': 218} |
| `tabs` | {'int': 218} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 75} |
| `failClosed` | {'bool': 75} |
| `kind` | {'str': 75} |
| `route` | {'str': 75} |
| `strict` | {'bool': 75} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
