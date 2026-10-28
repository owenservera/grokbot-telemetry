# sandbox_telemetry_parse — 2026-10-28 23:53:41 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=50328 lines=193
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 74 |
| `chrome_profile_sample` | 67 |
| `egress_tunnel_connect` | 27 |
| `egress_tunnel_desktop` | 16 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |
| `egress_time_zone` | 1 |

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
| `chromeBrowserPssKb` | {'int': 74} |
| `chromeGpuPssKb` | {'int': 74} |
| `chromeOtherPssKb` | {'int': 74} |
| `chromeProcesses` | {'int': 74} |
| `chromeProfiles` | {'int': 74} |
| `chromeRendererMaxPssKb` | {'int': 74} |
| `chromeRendererPssKb` | {'int': 74} |
| `chromeRenderers` | {'int': 74} |
| `chromeTabs` | {'int': 74} |
| `chromeTabsProbedProfiles` | {'int': 74} |
| `chromeUtilityPssKb` | {'int': 74} |
| `desktopPssKb` | {'int': 74} |
| `hostPssKb` | {'int': 74} |
| `kind` | {'str': 74} |
| `memAvailableKb` | {'int': 74} |
| `memTotalKb` | {'int': 74} |
| `otherPssKb` | {'int': 74} |
| `processes` | {'int': 74} |
| `pssFallbackProcesses` | {'int': 74} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 16} |
| `graceS` | {'int': 8} |
| `kind` | {'str': 16} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

### `egress_time_zone`

| key | types |
|-----|-------|
| `boxClockUtc` | {'bool': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `provider` | {'str': 1} |
| `source` | {'str': 1} |

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
| `cpuMillicores` | {'int': 66} |
| `display` | {'int': 67} |
| `kind` | {'str': 67} |
| `processes` | {'int': 67} |
| `pssKb` | {'int': 67} |
| `rendererMaxPssKb` | {'int': 67} |
| `renderers` | {'int': 67} |
| `tabs` | {'int': 67} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 27} |
| `failClosed` | {'bool': 27} |
| `kind` | {'str': 27} |
| `route` | {'str': 27} |
| `strict` | {'bool': 27} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
