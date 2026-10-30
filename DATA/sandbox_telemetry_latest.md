# sandbox_telemetry_parse — 2026-10-30 11:56:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1006366 lines=2655
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2019 |
| `chrome_profile_sample` | 390 |
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
| `chromeBrowserPssKb` | {'int': 2019} |
| `chromeGpuPssKb` | {'int': 2019} |
| `chromeOtherPssKb` | {'int': 2019} |
| `chromeProcesses` | {'int': 2019} |
| `chromeProfiles` | {'int': 2019} |
| `chromeRendererMaxPssKb` | {'int': 2019} |
| `chromeRendererPssKb` | {'int': 2019} |
| `chromeRenderers` | {'int': 2019} |
| `chromeTabs` | {'int': 2019} |
| `chromeTabsProbedProfiles` | {'int': 2019} |
| `chromeUtilityPssKb` | {'int': 2019} |
| `desktopPssKb` | {'int': 2019} |
| `hostPssKb` | {'int': 2019} |
| `kind` | {'str': 2019} |
| `memAvailableKb` | {'int': 2019} |
| `memTotalKb` | {'int': 2019} |
| `otherPssKb` | {'int': 2019} |
| `processes` | {'int': 2019} |
| `pssFallbackProcesses` | {'int': 2019} |

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
| `cpuMillicores` | {'int': 383} |
| `display` | {'int': 390} |
| `kind` | {'str': 390} |
| `processes` | {'int': 390} |
| `pssKb` | {'int': 390} |
| `rendererMaxPssKb` | {'int': 390} |
| `renderers` | {'int': 390} |
| `tabs` | {'int': 390} |

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
