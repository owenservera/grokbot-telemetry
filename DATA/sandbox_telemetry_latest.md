# sandbox_telemetry_parse — 2026-10-27 14:04:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=553373 lines=1246
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1213 |
| `chrome_profile_sample` | 15 |
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
| `chromeBrowserPssKb` | {'int': 1213} |
| `chromeGpuPssKb` | {'int': 1213} |
| `chromeOtherPssKb` | {'int': 1213} |
| `chromeProcesses` | {'int': 1213} |
| `chromeProfiles` | {'int': 1213} |
| `chromeRendererMaxPssKb` | {'int': 1213} |
| `chromeRendererPssKb` | {'int': 1213} |
| `chromeRenderers` | {'int': 1213} |
| `chromeTabs` | {'int': 1213} |
| `chromeTabsProbedProfiles` | {'int': 1213} |
| `chromeUtilityPssKb` | {'int': 1213} |
| `desktopPssKb` | {'int': 1213} |
| `hostPssKb` | {'int': 1213} |
| `kind` | {'str': 1213} |
| `memAvailableKb` | {'int': 1213} |
| `memTotalKb` | {'int': 1213} |
| `otherPssKb` | {'int': 1213} |
| `processes` | {'int': 1213} |
| `pssFallbackProcesses` | {'int': 1213} |

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
| `cpuMillicores` | {'int': 14} |
| `display` | {'int': 15} |
| `kind` | {'str': 15} |
| `processes` | {'int': 15} |
| `pssKb` | {'int': 15} |
| `rendererMaxPssKb` | {'int': 15} |
| `renderers` | {'int': 15} |
| `tabs` | {'int': 15} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
