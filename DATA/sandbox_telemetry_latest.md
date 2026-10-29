# sandbox_telemetry_parse — 2026-10-29 14:27:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=415486 lines=1074
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 846 |
| `chrome_profile_sample` | 139 |
| `egress_tunnel_desktop` | 39 |
| `egress_tunnel_connect` | 39 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `egress_time_zone` | 2 |
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
| `chromeBrowserPssKb` | {'int': 846} |
| `chromeGpuPssKb` | {'int': 846} |
| `chromeOtherPssKb` | {'int': 846} |
| `chromeProcesses` | {'int': 846} |
| `chromeProfiles` | {'int': 846} |
| `chromeRendererMaxPssKb` | {'int': 846} |
| `chromeRendererPssKb` | {'int': 846} |
| `chromeRenderers` | {'int': 846} |
| `chromeTabs` | {'int': 846} |
| `chromeTabsProbedProfiles` | {'int': 846} |
| `chromeUtilityPssKb` | {'int': 846} |
| `desktopPssKb` | {'int': 846} |
| `hostPssKb` | {'int': 846} |
| `kind` | {'str': 846} |
| `memAvailableKb` | {'int': 846} |
| `memTotalKb` | {'int': 846} |
| `otherPssKb` | {'int': 846} |
| `processes` | {'int': 846} |
| `pssFallbackProcesses` | {'int': 846} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 39} |
| `graceS` | {'int': 21} |
| `kind` | {'str': 39} |

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

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 137} |
| `display` | {'int': 139} |
| `kind` | {'str': 139} |
| `processes` | {'int': 139} |
| `pssKb` | {'int': 139} |
| `rendererMaxPssKb` | {'int': 139} |
| `renderers` | {'int': 139} |
| `tabs` | {'int': 139} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 39} |
| `failClosed` | {'bool': 39} |
| `kind` | {'str': 39} |
| `route` | {'str': 39} |
| `strict` | {'bool': 39} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
