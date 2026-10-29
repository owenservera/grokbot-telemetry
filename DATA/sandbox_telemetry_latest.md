# sandbox_telemetry_parse — 2026-10-29 14:21:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=412400 lines=1066
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 840 |
| `chrome_profile_sample` | 137 |
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
| `chromeBrowserPssKb` | {'int': 840} |
| `chromeGpuPssKb` | {'int': 840} |
| `chromeOtherPssKb` | {'int': 840} |
| `chromeProcesses` | {'int': 840} |
| `chromeProfiles` | {'int': 840} |
| `chromeRendererMaxPssKb` | {'int': 840} |
| `chromeRendererPssKb` | {'int': 840} |
| `chromeRenderers` | {'int': 840} |
| `chromeTabs` | {'int': 840} |
| `chromeTabsProbedProfiles` | {'int': 840} |
| `chromeUtilityPssKb` | {'int': 840} |
| `desktopPssKb` | {'int': 840} |
| `hostPssKb` | {'int': 840} |
| `kind` | {'str': 840} |
| `memAvailableKb` | {'int': 840} |
| `memTotalKb` | {'int': 840} |
| `otherPssKb` | {'int': 840} |
| `processes` | {'int': 840} |
| `pssFallbackProcesses` | {'int': 840} |

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
| `cpuMillicores` | {'int': 135} |
| `display` | {'int': 137} |
| `kind` | {'str': 137} |
| `processes` | {'int': 137} |
| `pssKb` | {'int': 137} |
| `rendererMaxPssKb` | {'int': 137} |
| `renderers` | {'int': 137} |
| `tabs` | {'int': 137} |

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
