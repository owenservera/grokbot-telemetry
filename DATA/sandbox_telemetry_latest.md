# sandbox_telemetry_parse — 2026-10-30 21:06:10 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1359138 lines=3974
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2525 |
| `chrome_profile_sample` | 957 |
| `egress_tunnel_connect` | 369 |
| `egress_tunnel_desktop` | 95 |
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
| `chromeBrowserPssKb` | {'int': 2525} |
| `chromeGpuPssKb` | {'int': 2525} |
| `chromeOtherPssKb` | {'int': 2525} |
| `chromeProcesses` | {'int': 2525} |
| `chromeProfiles` | {'int': 2525} |
| `chromeRendererMaxPssKb` | {'int': 2525} |
| `chromeRendererPssKb` | {'int': 2525} |
| `chromeRenderers` | {'int': 2525} |
| `chromeTabs` | {'int': 2525} |
| `chromeTabsProbedProfiles` | {'int': 2525} |
| `chromeUtilityPssKb` | {'int': 2525} |
| `desktopPssKb` | {'int': 2525} |
| `hostPssKb` | {'int': 2525} |
| `kind` | {'str': 2525} |
| `memAvailableKb` | {'int': 2525} |
| `memTotalKb` | {'int': 2525} |
| `otherPssKb` | {'int': 2525} |
| `processes` | {'int': 2525} |
| `pssFallbackProcesses` | {'int': 2525} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 95} |
| `graceS` | {'int': 54} |
| `kind` | {'str': 95} |

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
| `cpuMillicores` | {'int': 947} |
| `display` | {'int': 957} |
| `kind` | {'str': 957} |
| `processes` | {'int': 957} |
| `pssKb` | {'int': 957} |
| `rendererMaxPssKb` | {'int': 957} |
| `renderers` | {'int': 957} |
| `tabs` | {'int': 949} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 369} |
| `failClosed` | {'bool': 369} |
| `kind` | {'str': 369} |
| `route` | {'str': 369} |
| `strict` | {'bool': 369} |

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
