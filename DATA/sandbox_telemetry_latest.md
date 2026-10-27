# sandbox_telemetry_parse — 2026-10-27 14:17:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=557846 lines=1260
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1220 |
| `chrome_profile_sample` | 22 |
| `egress_tunnel_desktop` | 5 |
| `egress_tunnel_connect` | 4 |
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
| `chromeBrowserPssKb` | {'int': 1220} |
| `chromeGpuPssKb` | {'int': 1220} |
| `chromeOtherPssKb` | {'int': 1220} |
| `chromeProcesses` | {'int': 1220} |
| `chromeProfiles` | {'int': 1220} |
| `chromeRendererMaxPssKb` | {'int': 1220} |
| `chromeRendererPssKb` | {'int': 1220} |
| `chromeRenderers` | {'int': 1220} |
| `chromeTabs` | {'int': 1220} |
| `chromeTabsProbedProfiles` | {'int': 1220} |
| `chromeUtilityPssKb` | {'int': 1220} |
| `desktopPssKb` | {'int': 1220} |
| `hostPssKb` | {'int': 1220} |
| `kind` | {'str': 1220} |
| `memAvailableKb` | {'int': 1220} |
| `memTotalKb` | {'int': 1220} |
| `otherPssKb` | {'int': 1220} |
| `processes` | {'int': 1220} |
| `pssFallbackProcesses` | {'int': 1220} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 5} |
| `graceS` | {'int': 3} |
| `kind` | {'str': 5} |

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
| `cpuMillicores` | {'int': 21} |
| `display` | {'int': 22} |
| `kind` | {'str': 22} |
| `processes` | {'int': 22} |
| `pssKb` | {'int': 22} |
| `rendererMaxPssKb` | {'int': 22} |
| `renderers` | {'int': 22} |
| `tabs` | {'int': 22} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
