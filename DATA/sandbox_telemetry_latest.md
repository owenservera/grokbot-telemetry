# sandbox_telemetry_parse — 2026-10-29 14:00:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=401209 lines=1027
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 823 |
| `chrome_profile_sample` | 120 |
| `egress_tunnel_connect` | 38 |
| `egress_tunnel_desktop` | 35 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `egress_time_zone` | 2 |
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
| `chromeBrowserPssKb` | {'int': 823} |
| `chromeGpuPssKb` | {'int': 823} |
| `chromeOtherPssKb` | {'int': 823} |
| `chromeProcesses` | {'int': 823} |
| `chromeProfiles` | {'int': 823} |
| `chromeRendererMaxPssKb` | {'int': 823} |
| `chromeRendererPssKb` | {'int': 823} |
| `chromeRenderers` | {'int': 823} |
| `chromeTabs` | {'int': 823} |
| `chromeTabsProbedProfiles` | {'int': 823} |
| `chromeUtilityPssKb` | {'int': 823} |
| `desktopPssKb` | {'int': 823} |
| `hostPssKb` | {'int': 823} |
| `kind` | {'str': 823} |
| `memAvailableKb` | {'int': 823} |
| `memTotalKb` | {'int': 823} |
| `otherPssKb` | {'int': 823} |
| `processes` | {'int': 823} |
| `pssFallbackProcesses` | {'int': 823} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 35} |
| `graceS` | {'int': 19} |
| `kind` | {'str': 35} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

### `egress_time_zone`

| key | types |
|-----|-------|
| `boxClockUtc` | {'bool': 2} |
| `kind` | {'str': 2} |
| `outcome` | {'str': 2} |
| `provider` | {'str': 2} |
| `source` | {'str': 2} |

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
| `cpuMillicores` | {'int': 118} |
| `display` | {'int': 120} |
| `kind` | {'str': 120} |
| `processes` | {'int': 120} |
| `pssKb` | {'int': 120} |
| `rendererMaxPssKb` | {'int': 120} |
| `renderers` | {'int': 120} |
| `tabs` | {'int': 120} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 38} |
| `failClosed` | {'bool': 38} |
| `kind` | {'str': 38} |
| `route` | {'str': 38} |
| `strict` | {'bool': 38} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
