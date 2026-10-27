# sandbox_telemetry_parse — 2026-10-27 13:55:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=547487 lines=1226
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1204 |
| `chrome_profile_sample` | 6 |
| `egress_tunnel_connect` | 4 |
| `boot_stage` | 3 |
| `egress_tunnel_desktop` | 3 |
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
| `chromeBrowserPssKb` | {'int': 1204} |
| `chromeGpuPssKb` | {'int': 1204} |
| `chromeOtherPssKb` | {'int': 1204} |
| `chromeProcesses` | {'int': 1204} |
| `chromeProfiles` | {'int': 1204} |
| `chromeRendererMaxPssKb` | {'int': 1204} |
| `chromeRendererPssKb` | {'int': 1204} |
| `chromeRenderers` | {'int': 1204} |
| `chromeTabs` | {'int': 1204} |
| `chromeTabsProbedProfiles` | {'int': 1204} |
| `chromeUtilityPssKb` | {'int': 1204} |
| `desktopPssKb` | {'int': 1204} |
| `hostPssKb` | {'int': 1204} |
| `kind` | {'str': 1204} |
| `memAvailableKb` | {'int': 1204} |
| `memTotalKb` | {'int': 1204} |
| `otherPssKb` | {'int': 1204} |
| `processes` | {'int': 1204} |
| `pssFallbackProcesses` | {'int': 1204} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 3} |
| `graceS` | {'int': 1} |
| `kind` | {'str': 3} |

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

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 4} |
| `failClosed` | {'bool': 4} |
| `kind` | {'str': 4} |
| `route` | {'str': 4} |
| `strict` | {'bool': 4} |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 5} |
| `display` | {'int': 6} |
| `kind` | {'str': 6} |
| `processes` | {'int': 6} |
| `pssKb` | {'int': 6} |
| `rendererMaxPssKb` | {'int': 6} |
| `renderers` | {'int': 6} |
| `tabs` | {'int': 6} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
