# sandbox_telemetry_parse — 2026-10-28 23:05:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=19679 lines=80
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 29 |
| `chrome_profile_sample` | 22 |
| `egress_tunnel_connect` | 12 |
| `egress_tunnel_desktop` | 8 |
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
| `chromeBrowserPssKb` | {'int': 29} |
| `chromeGpuPssKb` | {'int': 29} |
| `chromeOtherPssKb` | {'int': 29} |
| `chromeProcesses` | {'int': 29} |
| `chromeProfiles` | {'int': 29} |
| `chromeRendererMaxPssKb` | {'int': 29} |
| `chromeRendererPssKb` | {'int': 29} |
| `chromeRenderers` | {'int': 29} |
| `chromeTabs` | {'int': 29} |
| `chromeTabsProbedProfiles` | {'int': 29} |
| `chromeUtilityPssKb` | {'int': 29} |
| `desktopPssKb` | {'int': 29} |
| `hostPssKb` | {'int': 29} |
| `kind` | {'str': 29} |
| `memAvailableKb` | {'int': 29} |
| `memTotalKb` | {'int': 29} |
| `otherPssKb` | {'int': 29} |
| `processes` | {'int': 29} |
| `pssFallbackProcesses` | {'int': 29} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 8} |
| `graceS` | {'int': 4} |
| `kind` | {'str': 8} |

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
| `cpuMillicores` | {'int': 21} |
| `display` | {'int': 22} |
| `kind` | {'str': 22} |
| `processes` | {'int': 22} |
| `pssKb` | {'int': 22} |
| `rendererMaxPssKb` | {'int': 22} |
| `renderers` | {'int': 22} |
| `tabs` | {'int': 22} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 12} |
| `failClosed` | {'bool': 12} |
| `kind` | {'str': 12} |
| `route` | {'str': 12} |
| `strict` | {'bool': 12} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
