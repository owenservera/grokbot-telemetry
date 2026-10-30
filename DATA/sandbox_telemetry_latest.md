# sandbox_telemetry_parse — 2026-10-30 19:04:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1256074 lines=3524
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2409 |
| `chrome_profile_sample` | 725 |
| `egress_tunnel_connect` | 276 |
| `egress_tunnel_desktop` | 86 |
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
| `chromeBrowserPssKb` | {'int': 2409} |
| `chromeGpuPssKb` | {'int': 2409} |
| `chromeOtherPssKb` | {'int': 2409} |
| `chromeProcesses` | {'int': 2409} |
| `chromeProfiles` | {'int': 2409} |
| `chromeRendererMaxPssKb` | {'int': 2409} |
| `chromeRendererPssKb` | {'int': 2409} |
| `chromeRenderers` | {'int': 2409} |
| `chromeTabs` | {'int': 2409} |
| `chromeTabsProbedProfiles` | {'int': 2409} |
| `chromeUtilityPssKb` | {'int': 2409} |
| `desktopPssKb` | {'int': 2409} |
| `hostPssKb` | {'int': 2409} |
| `kind` | {'str': 2409} |
| `memAvailableKb` | {'int': 2409} |
| `memTotalKb` | {'int': 2409} |
| `otherPssKb` | {'int': 2409} |
| `processes` | {'int': 2409} |
| `pssFallbackProcesses` | {'int': 2409} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 86} |
| `graceS` | {'int': 49} |
| `kind` | {'str': 86} |

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
| `cpuMillicores` | {'int': 715} |
| `display` | {'int': 725} |
| `kind` | {'str': 725} |
| `processes` | {'int': 725} |
| `pssKb` | {'int': 725} |
| `rendererMaxPssKb` | {'int': 725} |
| `renderers` | {'int': 725} |
| `tabs` | {'int': 717} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 276} |
| `failClosed` | {'bool': 276} |
| `kind` | {'str': 276} |
| `route` | {'str': 276} |
| `strict` | {'bool': 276} |

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
