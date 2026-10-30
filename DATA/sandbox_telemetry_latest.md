# sandbox_telemetry_parse — 2026-10-30 11:36:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=993166 lines=2610
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1999 |
| `chrome_profile_sample` | 370 |
| `egress_tunnel_connect` | 140 |
| `egress_tunnel_desktop` | 80 |
| `chrome_launch` | 7 |
| `egress_time_zone` | 7 |
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
| `chromeBrowserPssKb` | {'int': 1999} |
| `chromeGpuPssKb` | {'int': 1999} |
| `chromeOtherPssKb` | {'int': 1999} |
| `chromeProcesses` | {'int': 1999} |
| `chromeProfiles` | {'int': 1999} |
| `chromeRendererMaxPssKb` | {'int': 1999} |
| `chromeRendererPssKb` | {'int': 1999} |
| `chromeRenderers` | {'int': 1999} |
| `chromeTabs` | {'int': 1999} |
| `chromeTabsProbedProfiles` | {'int': 1999} |
| `chromeUtilityPssKb` | {'int': 1999} |
| `desktopPssKb` | {'int': 1999} |
| `hostPssKb` | {'int': 1999} |
| `kind` | {'str': 1999} |
| `memAvailableKb` | {'int': 1999} |
| `memTotalKb` | {'int': 1999} |
| `otherPssKb` | {'int': 1999} |
| `processes` | {'int': 1999} |
| `pssFallbackProcesses` | {'int': 1999} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 80} |
| `graceS` | {'int': 45} |
| `kind` | {'str': 80} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 7} |
| `display` | {'int': 7} |
| `durationMs` | {'int': 7} |
| `kind` | {'str': 7} |
| `launcher` | {'int': 7} |
| `launcherSource` | {'str': 7} |
| `mode` | {'str': 7} |
| `outcome` | {'str': 7} |

### `egress_time_zone`

| key | types |
|-----|-------|
| `boxClockUtc` | {'bool': 7} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `provider` | {'str': 7} |
| `source` | {'str': 7} |

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
| `cpuMillicores` | {'int': 363} |
| `display` | {'int': 370} |
| `kind` | {'str': 370} |
| `processes` | {'int': 370} |
| `pssKb` | {'int': 370} |
| `rendererMaxPssKb` | {'int': 370} |
| `renderers` | {'int': 370} |
| `tabs` | {'int': 370} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 140} |
| `failClosed` | {'bool': 140} |
| `kind` | {'str': 140} |
| `route` | {'str': 140} |
| `strict` | {'bool': 140} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
