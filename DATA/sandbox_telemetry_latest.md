# sandbox_telemetry_parse — 2026-10-28 23:34:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=37545 lines=147
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 55 |
| `chrome_profile_sample` | 48 |
| `egress_tunnel_connect` | 22 |
| `egress_tunnel_desktop` | 13 |
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
| `chromeBrowserPssKb` | {'int': 55} |
| `chromeGpuPssKb` | {'int': 55} |
| `chromeOtherPssKb` | {'int': 55} |
| `chromeProcesses` | {'int': 55} |
| `chromeProfiles` | {'int': 55} |
| `chromeRendererMaxPssKb` | {'int': 55} |
| `chromeRendererPssKb` | {'int': 55} |
| `chromeRenderers` | {'int': 55} |
| `chromeTabs` | {'int': 55} |
| `chromeTabsProbedProfiles` | {'int': 55} |
| `chromeUtilityPssKb` | {'int': 55} |
| `desktopPssKb` | {'int': 55} |
| `hostPssKb` | {'int': 55} |
| `kind` | {'str': 55} |
| `memAvailableKb` | {'int': 55} |
| `memTotalKb` | {'int': 55} |
| `otherPssKb` | {'int': 55} |
| `processes` | {'int': 55} |
| `pssFallbackProcesses` | {'int': 55} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 13} |
| `graceS` | {'int': 7} |
| `kind` | {'str': 13} |

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
| `cpuMillicores` | {'int': 47} |
| `display` | {'int': 48} |
| `kind` | {'str': 48} |
| `processes` | {'int': 48} |
| `pssKb` | {'int': 48} |
| `rendererMaxPssKb` | {'int': 48} |
| `renderers` | {'int': 48} |
| `tabs` | {'int': 48} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 22} |
| `failClosed` | {'bool': 22} |
| `kind` | {'str': 22} |
| `route` | {'str': 22} |
| `strict` | {'bool': 22} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
