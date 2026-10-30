# sandbox_telemetry_parse — 2026-10-30 11:38:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=994444 lines=2614
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2001 |
| `chrome_profile_sample` | 372 |
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
| `chromeBrowserPssKb` | {'int': 2001} |
| `chromeGpuPssKb` | {'int': 2001} |
| `chromeOtherPssKb` | {'int': 2001} |
| `chromeProcesses` | {'int': 2001} |
| `chromeProfiles` | {'int': 2001} |
| `chromeRendererMaxPssKb` | {'int': 2001} |
| `chromeRendererPssKb` | {'int': 2001} |
| `chromeRenderers` | {'int': 2001} |
| `chromeTabs` | {'int': 2001} |
| `chromeTabsProbedProfiles` | {'int': 2001} |
| `chromeUtilityPssKb` | {'int': 2001} |
| `desktopPssKb` | {'int': 2001} |
| `hostPssKb` | {'int': 2001} |
| `kind` | {'str': 2001} |
| `memAvailableKb` | {'int': 2001} |
| `memTotalKb` | {'int': 2001} |
| `otherPssKb` | {'int': 2001} |
| `processes` | {'int': 2001} |
| `pssFallbackProcesses` | {'int': 2001} |

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
| `cpuMillicores` | {'int': 365} |
| `display` | {'int': 372} |
| `kind` | {'str': 372} |
| `processes` | {'int': 372} |
| `pssKb` | {'int': 372} |
| `rendererMaxPssKb` | {'int': 372} |
| `renderers` | {'int': 372} |
| `tabs` | {'int': 372} |

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
