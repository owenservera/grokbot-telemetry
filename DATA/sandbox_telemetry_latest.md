# sandbox_telemetry_parse — 2026-10-30 21:33:29 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1380571 lines=4068
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2549 |
| `chrome_profile_sample` | 1005 |
| `egress_tunnel_connect` | 389 |
| `egress_tunnel_desktop` | 97 |
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
| `chromeBrowserPssKb` | {'int': 2549} |
| `chromeGpuPssKb` | {'int': 2549} |
| `chromeOtherPssKb` | {'int': 2549} |
| `chromeProcesses` | {'int': 2549} |
| `chromeProfiles` | {'int': 2549} |
| `chromeRendererMaxPssKb` | {'int': 2549} |
| `chromeRendererPssKb` | {'int': 2549} |
| `chromeRenderers` | {'int': 2549} |
| `chromeTabs` | {'int': 2549} |
| `chromeTabsProbedProfiles` | {'int': 2549} |
| `chromeUtilityPssKb` | {'int': 2549} |
| `desktopPssKb` | {'int': 2549} |
| `hostPssKb` | {'int': 2549} |
| `kind` | {'str': 2549} |
| `memAvailableKb` | {'int': 2549} |
| `memTotalKb` | {'int': 2549} |
| `otherPssKb` | {'int': 2549} |
| `processes` | {'int': 2549} |
| `pssFallbackProcesses` | {'int': 2549} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 97} |
| `graceS` | {'int': 55} |
| `kind` | {'str': 97} |

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
| `cpuMillicores` | {'int': 995} |
| `display` | {'int': 1005} |
| `kind` | {'str': 1005} |
| `processes` | {'int': 1005} |
| `pssKb` | {'int': 1005} |
| `rendererMaxPssKb` | {'int': 1005} |
| `renderers` | {'int': 1005} |
| `tabs` | {'int': 997} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 389} |
| `failClosed` | {'bool': 389} |
| `kind` | {'str': 389} |
| `route` | {'str': 389} |
| `strict` | {'bool': 389} |

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
