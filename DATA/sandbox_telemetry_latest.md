# sandbox_telemetry_parse — 2026-10-29 21:38:26 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=646770 lines=1816
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1246 |
| `chrome_profile_sample` | 346 |
| `egress_tunnel_connect` | 128 |
| `egress_tunnel_desktop` | 77 |
| `chrome_launch` | 6 |
| `egress_time_zone` | 6 |
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
| `chromeBrowserPssKb` | {'int': 1246} |
| `chromeGpuPssKb` | {'int': 1246} |
| `chromeOtherPssKb` | {'int': 1246} |
| `chromeProcesses` | {'int': 1246} |
| `chromeProfiles` | {'int': 1246} |
| `chromeRendererMaxPssKb` | {'int': 1246} |
| `chromeRendererPssKb` | {'int': 1246} |
| `chromeRenderers` | {'int': 1246} |
| `chromeTabs` | {'int': 1246} |
| `chromeTabsProbedProfiles` | {'int': 1246} |
| `chromeUtilityPssKb` | {'int': 1246} |
| `desktopPssKb` | {'int': 1246} |
| `hostPssKb` | {'int': 1246} |
| `kind` | {'str': 1246} |
| `memAvailableKb` | {'int': 1246} |
| `memTotalKb` | {'int': 1246} |
| `otherPssKb` | {'int': 1246} |
| `processes` | {'int': 1246} |
| `pssFallbackProcesses` | {'int': 1246} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 77} |
| `graceS` | {'int': 44} |
| `kind` | {'str': 77} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 6} |
| `display` | {'int': 6} |
| `durationMs` | {'int': 6} |
| `kind` | {'str': 6} |
| `launcher` | {'int': 6} |
| `launcherSource` | {'str': 6} |
| `mode` | {'str': 6} |
| `outcome` | {'str': 6} |

### `egress_time_zone`

| key | types |
|-----|-------|
| `boxClockUtc` | {'bool': 6} |
| `kind` | {'str': 6} |
| `outcome` | {'str': 6} |
| `provider` | {'str': 6} |
| `source` | {'str': 6} |

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
| `cpuMillicores` | {'int': 340} |
| `display` | {'int': 346} |
| `kind` | {'str': 346} |
| `processes` | {'int': 346} |
| `pssKb` | {'int': 346} |
| `rendererMaxPssKb` | {'int': 346} |
| `renderers` | {'int': 346} |
| `tabs` | {'int': 346} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 128} |
| `failClosed` | {'bool': 128} |
| `kind` | {'str': 128} |
| `route` | {'str': 128} |
| `strict` | {'bool': 128} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
