# sandbox_telemetry_parse — 2026-10-31 07:21:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1639271 lines=4750
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3070 |
| `chrome_profile_sample` | 1105 |
| `egress_tunnel_connect` | 435 |
| `egress_tunnel_desktop` | 111 |
| `chrome_launch` | 9 |
| `egress_time_zone` | 9 |
| `boot_stage` | 3 |
| `supervisor_restart` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `process_crash` | 1 |

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
| `chromeBrowserPssKb` | {'int': 3070} |
| `chromeGpuPssKb` | {'int': 3070} |
| `chromeOtherPssKb` | {'int': 3070} |
| `chromeProcesses` | {'int': 3070} |
| `chromeProfiles` | {'int': 3070} |
| `chromeRendererMaxPssKb` | {'int': 3070} |
| `chromeRendererPssKb` | {'int': 3070} |
| `chromeRenderers` | {'int': 3070} |
| `chromeTabs` | {'int': 3070} |
| `chromeTabsProbedProfiles` | {'int': 3070} |
| `chromeUtilityPssKb` | {'int': 3070} |
| `desktopPssKb` | {'int': 3070} |
| `hostPssKb` | {'int': 3070} |
| `kind` | {'str': 3070} |
| `memAvailableKb` | {'int': 3070} |
| `memTotalKb` | {'int': 3070} |
| `otherPssKb` | {'int': 3070} |
| `processes` | {'int': 3070} |
| `pssFallbackProcesses` | {'int': 3070} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 111} |
| `graceS` | {'int': 62} |
| `kind` | {'str': 111} |

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
| `cpuMillicores` | {'int': 1095} |
| `display` | {'int': 1105} |
| `kind` | {'str': 1105} |
| `processes` | {'int': 1105} |
| `pssKb` | {'int': 1105} |
| `rendererMaxPssKb` | {'int': 1105} |
| `renderers` | {'int': 1105} |
| `tabs` | {'int': 1097} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 435} |
| `failClosed` | {'bool': 435} |
| `kind` | {'str': 435} |
| `route` | {'str': 435} |
| `strict` | {'bool': 435} |

### `supervisor_restart`

| key | types |
|-----|-------|
| `at` | {'float': 3} |
| `cause` | {'str': 3} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 3} |
| `restartAttempt` | {'int': 3} |
| `runtimeS` | {'int': 3} |

### `process_crash`

| key | types |
|-----|-------|
| `binary` | {'str': 1} |
| `count` | {'int': 1} |
| `kind` | {'str': 1} |
| `signal` | {'str': 1} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
