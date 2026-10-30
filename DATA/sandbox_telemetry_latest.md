# sandbox_telemetry_parse — 2026-10-30 21:31:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1381422 lines=4071
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2550 |
| `chrome_profile_sample` | 1007 |
| `egress_tunnel_connect` | 390 |
| `egress_tunnel_desktop` | 96 |
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
| `chromeBrowserPssKb` | {'int': 2550} |
| `chromeGpuPssKb` | {'int': 2550} |
| `chromeOtherPssKb` | {'int': 2550} |
| `chromeProcesses` | {'int': 2550} |
| `chromeProfiles` | {'int': 2550} |
| `chromeRendererMaxPssKb` | {'int': 2550} |
| `chromeRendererPssKb` | {'int': 2550} |
| `chromeRenderers` | {'int': 2550} |
| `chromeTabs` | {'int': 2550} |
| `chromeTabsProbedProfiles` | {'int': 2550} |
| `chromeUtilityPssKb` | {'int': 2550} |
| `desktopPssKb` | {'int': 2550} |
| `hostPssKb` | {'int': 2550} |
| `kind` | {'str': 2550} |
| `memAvailableKb` | {'int': 2550} |
| `memTotalKb` | {'int': 2550} |
| `otherPssKb` | {'int': 2550} |
| `processes` | {'int': 2550} |
| `pssFallbackProcesses` | {'int': 2550} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 96} |
| `graceS` | {'int': 55} |
| `kind` | {'str': 96} |

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
| `cpuMillicores` | {'int': 997} |
| `display` | {'int': 1007} |
| `kind` | {'str': 1007} |
| `processes` | {'int': 1007} |
| `pssKb` | {'int': 1007} |
| `rendererMaxPssKb` | {'int': 1007} |
| `renderers` | {'int': 1007} |
| `tabs` | {'int': 999} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 390} |
| `failClosed` | {'bool': 390} |
| `kind` | {'str': 390} |
| `route` | {'str': 390} |
| `strict` | {'bool': 390} |

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
