# sandbox_telemetry_parse — 2026-10-29 15:16:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=443715 lines=1165
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 893 |
| `chrome_profile_sample` | 166 |
| `egress_tunnel_connect` | 49 |
| `egress_tunnel_desktop` | 44 |
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
| `chromeBrowserPssKb` | {'int': 893} |
| `chromeGpuPssKb` | {'int': 893} |
| `chromeOtherPssKb` | {'int': 893} |
| `chromeProcesses` | {'int': 893} |
| `chromeProfiles` | {'int': 893} |
| `chromeRendererMaxPssKb` | {'int': 893} |
| `chromeRendererPssKb` | {'int': 893} |
| `chromeRenderers` | {'int': 893} |
| `chromeTabs` | {'int': 893} |
| `chromeTabsProbedProfiles` | {'int': 893} |
| `chromeUtilityPssKb` | {'int': 893} |
| `desktopPssKb` | {'int': 893} |
| `hostPssKb` | {'int': 893} |
| `kind` | {'str': 893} |
| `memAvailableKb` | {'int': 893} |
| `memTotalKb` | {'int': 893} |
| `otherPssKb` | {'int': 893} |
| `processes` | {'int': 893} |
| `pssFallbackProcesses` | {'int': 893} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 44} |
| `graceS` | {'int': 24} |
| `kind` | {'str': 44} |

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
| `cpuMillicores` | {'int': 163} |
| `display` | {'int': 166} |
| `kind` | {'str': 166} |
| `processes` | {'int': 166} |
| `pssKb` | {'int': 166} |
| `rendererMaxPssKb` | {'int': 166} |
| `renderers` | {'int': 166} |
| `tabs` | {'int': 166} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 49} |
| `failClosed` | {'bool': 49} |
| `kind` | {'str': 49} |
| `route` | {'str': 49} |
| `strict` | {'bool': 49} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
