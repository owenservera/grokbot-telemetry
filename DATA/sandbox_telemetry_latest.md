# sandbox_telemetry_parse — 2026-10-30 21:53:21 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1395135 lines=4135
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2565 |
| `chrome_profile_sample` | 1037 |
| `egress_tunnel_connect` | 403 |
| `egress_tunnel_desktop` | 102 |
| `chrome_launch` | 9 |
| `egress_time_zone` | 9 |
| `boot_stage` | 3 |
| `supervisor_restart` | 3 |
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
| `chromeBrowserPssKb` | {'int': 2565} |
| `chromeGpuPssKb` | {'int': 2565} |
| `chromeOtherPssKb` | {'int': 2565} |
| `chromeProcesses` | {'int': 2565} |
| `chromeProfiles` | {'int': 2565} |
| `chromeRendererMaxPssKb` | {'int': 2565} |
| `chromeRendererPssKb` | {'int': 2565} |
| `chromeRenderers` | {'int': 2565} |
| `chromeTabs` | {'int': 2565} |
| `chromeTabsProbedProfiles` | {'int': 2565} |
| `chromeUtilityPssKb` | {'int': 2565} |
| `desktopPssKb` | {'int': 2565} |
| `hostPssKb` | {'int': 2565} |
| `kind` | {'str': 2565} |
| `memAvailableKb` | {'int': 2565} |
| `memTotalKb` | {'int': 2565} |
| `otherPssKb` | {'int': 2565} |
| `processes` | {'int': 2565} |
| `pssFallbackProcesses` | {'int': 2565} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 102} |
| `graceS` | {'int': 58} |
| `kind` | {'str': 102} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 9} |
| `display` | {'int': 9} |
| `durationMs` | {'int': 9} |
| `kind` | {'str': 9} |
| `launcher` | {'int': 9} |
| `launcherSource` | {'str': 9} |
| `mode` | {'str': 9} |
| `outcome` | {'str': 9} |

### `egress_time_zone`

| key | types |
|-----|-------|
| `boxClockUtc` | {'bool': 9} |
| `kind` | {'str': 9} |
| `outcome` | {'str': 9} |
| `provider` | {'str': 9} |
| `source` | {'str': 9} |

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
| `cpuMillicores` | {'int': 1027} |
| `display` | {'int': 1037} |
| `kind` | {'str': 1037} |
| `processes` | {'int': 1037} |
| `pssKb` | {'int': 1037} |
| `rendererMaxPssKb` | {'int': 1037} |
| `renderers` | {'int': 1037} |
| `tabs` | {'int': 1029} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 403} |
| `failClosed` | {'bool': 403} |
| `kind` | {'str': 403} |
| `route` | {'str': 403} |
| `strict` | {'bool': 403} |

### `supervisor_restart`

| key | types |
|-----|-------|
| `at` | {'float': 3} |
| `cause` | {'str': 3} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 3} |
| `restartAttempt` | {'int': 3} |
| `runtimeS` | {'int': 3} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
