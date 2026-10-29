# sandbox_telemetry_parse — 2026-10-29 21:03:17 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=625980 lines=1744
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1215 |
| `chrome_profile_sample` | 315 |
| `egress_tunnel_connect` | 118 |
| `egress_tunnel_desktop` | 77 |
| `chrome_launch` | 6 |
| `egress_time_zone` | 6 |
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
| `chromeBrowserPssKb` | {'int': 1215} |
| `chromeGpuPssKb` | {'int': 1215} |
| `chromeOtherPssKb` | {'int': 1215} |
| `chromeProcesses` | {'int': 1215} |
| `chromeProfiles` | {'int': 1215} |
| `chromeRendererMaxPssKb` | {'int': 1215} |
| `chromeRendererPssKb` | {'int': 1215} |
| `chromeRenderers` | {'int': 1215} |
| `chromeTabs` | {'int': 1215} |
| `chromeTabsProbedProfiles` | {'int': 1215} |
| `chromeUtilityPssKb` | {'int': 1215} |
| `desktopPssKb` | {'int': 1215} |
| `hostPssKb` | {'int': 1215} |
| `kind` | {'str': 1215} |
| `memAvailableKb` | {'int': 1215} |
| `memTotalKb` | {'int': 1215} |
| `otherPssKb` | {'int': 1215} |
| `processes` | {'int': 1215} |
| `pssFallbackProcesses` | {'int': 1215} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 77} |
| `graceS` | {'int': 44} |
| `kind` | {'str': 77} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 6} |
| `display` | {'int': 6} |
| `durationMs` | {'int': 6} |
| `kind` | {'str': 6} |
| `launcher` | {'int': 6} |
| `launcherSource` | {'str': 6} |
| `mode` | {'str': 6} |
| `outcome` | {'str': 6} |

### `egress_time_zone`

| key | types |
|-----|-------|
| `boxClockUtc` | {'bool': 6} |
| `kind` | {'str': 6} |
| `outcome` | {'str': 6} |
| `provider` | {'str': 6} |
| `source` | {'str': 6} |

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
| `cpuMillicores` | {'int': 309} |
| `display` | {'int': 315} |
| `kind` | {'str': 315} |
| `processes` | {'int': 315} |
| `pssKb` | {'int': 315} |
| `rendererMaxPssKb` | {'int': 315} |
| `renderers` | {'int': 315} |
| `tabs` | {'int': 315} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 118} |
| `failClosed` | {'bool': 118} |
| `kind` | {'str': 118} |
| `route` | {'str': 118} |
| `strict` | {'bool': 118} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
