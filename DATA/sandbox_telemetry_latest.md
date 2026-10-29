# sandbox_telemetry_parse — 2026-10-29 19:00:10 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=547762 lines=1460
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1098 |
| `chrome_profile_sample` | 209 |
| `egress_tunnel_connect` | 70 |
| `egress_tunnel_desktop` | 66 |
| `chrome_launch` | 5 |
| `egress_time_zone` | 5 |
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
| `chromeBrowserPssKb` | {'int': 1098} |
| `chromeGpuPssKb` | {'int': 1098} |
| `chromeOtherPssKb` | {'int': 1098} |
| `chromeProcesses` | {'int': 1098} |
| `chromeProfiles` | {'int': 1098} |
| `chromeRendererMaxPssKb` | {'int': 1098} |
| `chromeRendererPssKb` | {'int': 1098} |
| `chromeRenderers` | {'int': 1098} |
| `chromeTabs` | {'int': 1098} |
| `chromeTabsProbedProfiles` | {'int': 1098} |
| `chromeUtilityPssKb` | {'int': 1098} |
| `desktopPssKb` | {'int': 1098} |
| `hostPssKb` | {'int': 1098} |
| `kind` | {'str': 1098} |
| `memAvailableKb` | {'int': 1098} |
| `memTotalKb` | {'int': 1098} |
| `otherPssKb` | {'int': 1098} |
| `processes` | {'int': 1098} |
| `pssFallbackProcesses` | {'int': 1098} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 66} |
| `graceS` | {'int': 37} |
| `kind` | {'str': 66} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 5} |
| `display` | {'int': 5} |
| `durationMs` | {'int': 5} |
| `kind` | {'str': 5} |
| `launcher` | {'int': 5} |
| `launcherSource` | {'str': 5} |
| `mode` | {'str': 5} |
| `outcome` | {'str': 5} |

### `egress_time_zone`

| key | types |
|-----|-------|
| `boxClockUtc` | {'bool': 5} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `provider` | {'str': 5} |
| `source` | {'str': 5} |

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
| `cpuMillicores` | {'int': 204} |
| `display` | {'int': 209} |
| `kind` | {'str': 209} |
| `processes` | {'int': 209} |
| `pssKb` | {'int': 209} |
| `rendererMaxPssKb` | {'int': 209} |
| `renderers` | {'int': 209} |
| `tabs` | {'int': 209} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 70} |
| `failClosed` | {'bool': 70} |
| `kind` | {'str': 70} |
| `route` | {'str': 70} |
| `strict` | {'bool': 70} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
