# sandbox_telemetry_parse — 2026-10-29 13:25:57 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=378443 lines=952
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 788 |
| `chrome_profile_sample` | 85 |
| `egress_tunnel_connect` | 35 |
| `egress_tunnel_desktop` | 33 |
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
| `chromeBrowserPssKb` | {'int': 788} |
| `chromeGpuPssKb` | {'int': 788} |
| `chromeOtherPssKb` | {'int': 788} |
| `chromeProcesses` | {'int': 788} |
| `chromeProfiles` | {'int': 788} |
| `chromeRendererMaxPssKb` | {'int': 788} |
| `chromeRendererPssKb` | {'int': 788} |
| `chromeRenderers` | {'int': 788} |
| `chromeTabs` | {'int': 788} |
| `chromeTabsProbedProfiles` | {'int': 788} |
| `chromeUtilityPssKb` | {'int': 788} |
| `desktopPssKb` | {'int': 788} |
| `hostPssKb` | {'int': 788} |
| `kind` | {'str': 788} |
| `memAvailableKb` | {'int': 788} |
| `memTotalKb` | {'int': 788} |
| `otherPssKb` | {'int': 788} |
| `processes` | {'int': 788} |
| `pssFallbackProcesses` | {'int': 788} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 33} |
| `graceS` | {'int': 18} |
| `kind` | {'str': 33} |

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
| `cpuMillicores` | {'int': 83} |
| `display` | {'int': 85} |
| `kind` | {'str': 85} |
| `processes` | {'int': 85} |
| `pssKb` | {'int': 85} |
| `rendererMaxPssKb` | {'int': 85} |
| `renderers` | {'int': 85} |
| `tabs` | {'int': 85} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 35} |
| `failClosed` | {'bool': 35} |
| `kind` | {'str': 35} |
| `route` | {'str': 35} |
| `strict` | {'bool': 35} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
