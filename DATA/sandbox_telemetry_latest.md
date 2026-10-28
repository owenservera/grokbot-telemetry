# sandbox_telemetry_parse — 2026-10-28 23:33:18 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=36743 lines=143
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 54 |
| `chrome_profile_sample` | 47 |
| `egress_tunnel_connect` | 21 |
| `egress_tunnel_desktop` | 12 |
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
| `chromeBrowserPssKb` | {'int': 54} |
| `chromeGpuPssKb` | {'int': 54} |
| `chromeOtherPssKb` | {'int': 54} |
| `chromeProcesses` | {'int': 54} |
| `chromeProfiles` | {'int': 54} |
| `chromeRendererMaxPssKb` | {'int': 54} |
| `chromeRendererPssKb` | {'int': 54} |
| `chromeRenderers` | {'int': 54} |
| `chromeTabs` | {'int': 54} |
| `chromeTabsProbedProfiles` | {'int': 54} |
| `chromeUtilityPssKb` | {'int': 54} |
| `desktopPssKb` | {'int': 54} |
| `hostPssKb` | {'int': 54} |
| `kind` | {'str': 54} |
| `memAvailableKb` | {'int': 54} |
| `memTotalKb` | {'int': 54} |
| `otherPssKb` | {'int': 54} |
| `processes` | {'int': 54} |
| `pssFallbackProcesses` | {'int': 54} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 12} |
| `graceS` | {'int': 6} |
| `kind` | {'str': 12} |

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
| `cpuMillicores` | {'int': 46} |
| `display` | {'int': 47} |
| `kind` | {'str': 47} |
| `processes` | {'int': 47} |
| `pssKb` | {'int': 47} |
| `rendererMaxPssKb` | {'int': 47} |
| `renderers` | {'int': 47} |
| `tabs` | {'int': 47} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 21} |
| `failClosed` | {'bool': 21} |
| `kind` | {'str': 21} |
| `route` | {'str': 21} |
| `strict` | {'bool': 21} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
