# sandbox_telemetry_parse — 2026-10-29 13:57:18 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=399176 lines=1019
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 820 |
| `chrome_profile_sample` | 117 |
| `egress_tunnel_connect` | 38 |
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
| `chromeBrowserPssKb` | {'int': 820} |
| `chromeGpuPssKb` | {'int': 820} |
| `chromeOtherPssKb` | {'int': 820} |
| `chromeProcesses` | {'int': 820} |
| `chromeProfiles` | {'int': 820} |
| `chromeRendererMaxPssKb` | {'int': 820} |
| `chromeRendererPssKb` | {'int': 820} |
| `chromeRenderers` | {'int': 820} |
| `chromeTabs` | {'int': 820} |
| `chromeTabsProbedProfiles` | {'int': 820} |
| `chromeUtilityPssKb` | {'int': 820} |
| `desktopPssKb` | {'int': 820} |
| `hostPssKb` | {'int': 820} |
| `kind` | {'str': 820} |
| `memAvailableKb` | {'int': 820} |
| `memTotalKb` | {'int': 820} |
| `otherPssKb` | {'int': 820} |
| `processes` | {'int': 820} |
| `pssFallbackProcesses` | {'int': 820} |

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
| `cpuMillicores` | {'int': 115} |
| `display` | {'int': 117} |
| `kind` | {'str': 117} |
| `processes` | {'int': 117} |
| `pssKb` | {'int': 117} |
| `rendererMaxPssKb` | {'int': 117} |
| `renderers` | {'int': 117} |
| `tabs` | {'int': 117} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 38} |
| `failClosed` | {'bool': 38} |
| `kind` | {'str': 38} |
| `route` | {'str': 38} |
| `strict` | {'bool': 38} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
