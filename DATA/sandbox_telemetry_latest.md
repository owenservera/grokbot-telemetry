# sandbox_telemetry_parse — 2026-10-30 11:55:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1005727 lines=2653
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2018 |
| `chrome_profile_sample` | 389 |
| `egress_tunnel_connect` | 143 |
| `egress_tunnel_desktop` | 82 |
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
| `chromeBrowserPssKb` | {'int': 2018} |
| `chromeGpuPssKb` | {'int': 2018} |
| `chromeOtherPssKb` | {'int': 2018} |
| `chromeProcesses` | {'int': 2018} |
| `chromeProfiles` | {'int': 2018} |
| `chromeRendererMaxPssKb` | {'int': 2018} |
| `chromeRendererPssKb` | {'int': 2018} |
| `chromeRenderers` | {'int': 2018} |
| `chromeTabs` | {'int': 2018} |
| `chromeTabsProbedProfiles` | {'int': 2018} |
| `chromeUtilityPssKb` | {'int': 2018} |
| `desktopPssKb` | {'int': 2018} |
| `hostPssKb` | {'int': 2018} |
| `kind` | {'str': 2018} |
| `memAvailableKb` | {'int': 2018} |
| `memTotalKb` | {'int': 2018} |
| `otherPssKb` | {'int': 2018} |
| `processes` | {'int': 2018} |
| `pssFallbackProcesses` | {'int': 2018} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 82} |
| `graceS` | {'int': 47} |
| `kind` | {'str': 82} |

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
| `cpuMillicores` | {'int': 382} |
| `display` | {'int': 389} |
| `kind` | {'str': 389} |
| `processes` | {'int': 389} |
| `pssKb` | {'int': 389} |
| `rendererMaxPssKb` | {'int': 389} |
| `renderers` | {'int': 389} |
| `tabs` | {'int': 389} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 143} |
| `failClosed` | {'bool': 143} |
| `kind` | {'str': 143} |
| `route` | {'str': 143} |
| `strict` | {'bool': 143} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
