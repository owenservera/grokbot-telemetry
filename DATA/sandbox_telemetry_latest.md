# sandbox_telemetry_parse — 2026-10-29 00:01:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=54468 lines=209
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 80 |
| `chrome_profile_sample` | 73 |
| `egress_tunnel_connect` | 29 |
| `egress_tunnel_desktop` | 18 |
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
| `chromeBrowserPssKb` | {'int': 80} |
| `chromeGpuPssKb` | {'int': 80} |
| `chromeOtherPssKb` | {'int': 80} |
| `chromeProcesses` | {'int': 80} |
| `chromeProfiles` | {'int': 80} |
| `chromeRendererMaxPssKb` | {'int': 80} |
| `chromeRendererPssKb` | {'int': 80} |
| `chromeRenderers` | {'int': 80} |
| `chromeTabs` | {'int': 80} |
| `chromeTabsProbedProfiles` | {'int': 80} |
| `chromeUtilityPssKb` | {'int': 80} |
| `desktopPssKb` | {'int': 80} |
| `hostPssKb` | {'int': 80} |
| `kind` | {'str': 80} |
| `memAvailableKb` | {'int': 80} |
| `memTotalKb` | {'int': 80} |
| `otherPssKb` | {'int': 80} |
| `processes` | {'int': 80} |
| `pssFallbackProcesses` | {'int': 80} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 18} |
| `graceS` | {'int': 9} |
| `kind` | {'str': 18} |

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
| `cpuMillicores` | {'int': 72} |
| `display` | {'int': 73} |
| `kind` | {'str': 73} |
| `processes` | {'int': 73} |
| `pssKb` | {'int': 73} |
| `rendererMaxPssKb` | {'int': 73} |
| `renderers` | {'int': 73} |
| `tabs` | {'int': 73} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 29} |
| `failClosed` | {'bool': 29} |
| `kind` | {'str': 29} |
| `route` | {'str': 29} |
| `strict` | {'bool': 29} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
