# sandbox_telemetry_parse — 2026-10-29 20:09:30 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=591150 lines=1618
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1164 |
| `chrome_profile_sample` | 264 |
| `egress_tunnel_connect` | 96 |
| `egress_tunnel_desktop` | 75 |
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
| `chromeBrowserPssKb` | {'int': 1164} |
| `chromeGpuPssKb` | {'int': 1164} |
| `chromeOtherPssKb` | {'int': 1164} |
| `chromeProcesses` | {'int': 1164} |
| `chromeProfiles` | {'int': 1164} |
| `chromeRendererMaxPssKb` | {'int': 1164} |
| `chromeRendererPssKb` | {'int': 1164} |
| `chromeRenderers` | {'int': 1164} |
| `chromeTabs` | {'int': 1164} |
| `chromeTabsProbedProfiles` | {'int': 1164} |
| `chromeUtilityPssKb` | {'int': 1164} |
| `desktopPssKb` | {'int': 1164} |
| `hostPssKb` | {'int': 1164} |
| `kind` | {'str': 1164} |
| `memAvailableKb` | {'int': 1164} |
| `memTotalKb` | {'int': 1164} |
| `otherPssKb` | {'int': 1164} |
| `processes` | {'int': 1164} |
| `pssFallbackProcesses` | {'int': 1164} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 75} |
| `graceS` | {'int': 42} |
| `kind` | {'str': 75} |

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
| `cpuMillicores` | {'int': 258} |
| `display` | {'int': 264} |
| `kind` | {'str': 264} |
| `processes` | {'int': 264} |
| `pssKb` | {'int': 264} |
| `rendererMaxPssKb` | {'int': 264} |
| `renderers` | {'int': 264} |
| `tabs` | {'int': 264} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 96} |
| `failClosed` | {'bool': 96} |
| `kind` | {'str': 96} |
| `route` | {'str': 96} |
| `strict` | {'bool': 96} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
