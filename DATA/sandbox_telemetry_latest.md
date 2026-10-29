# sandbox_telemetry_parse — 2026-10-29 16:35:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=474940 lines=1242
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 962 |
| `chrome_profile_sample` | 166 |
| `egress_tunnel_desktop` | 52 |
| `egress_tunnel_connect` | 49 |
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
| `chromeBrowserPssKb` | {'int': 962} |
| `chromeGpuPssKb` | {'int': 962} |
| `chromeOtherPssKb` | {'int': 962} |
| `chromeProcesses` | {'int': 962} |
| `chromeProfiles` | {'int': 962} |
| `chromeRendererMaxPssKb` | {'int': 962} |
| `chromeRendererPssKb` | {'int': 962} |
| `chromeRenderers` | {'int': 962} |
| `chromeTabs` | {'int': 962} |
| `chromeTabsProbedProfiles` | {'int': 962} |
| `chromeUtilityPssKb` | {'int': 962} |
| `desktopPssKb` | {'int': 962} |
| `hostPssKb` | {'int': 962} |
| `kind` | {'str': 962} |
| `memAvailableKb` | {'int': 962} |
| `memTotalKb` | {'int': 962} |
| `otherPssKb` | {'int': 962} |
| `processes` | {'int': 962} |
| `pssFallbackProcesses` | {'int': 962} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 52} |
| `graceS` | {'int': 29} |
| `kind` | {'str': 52} |

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
