# sandbox_telemetry_parse — 2026-10-29 16:41:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=479295 lines=1259
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 968 |
| `chrome_profile_sample` | 172 |
| `egress_tunnel_desktop` | 52 |
| `egress_tunnel_connect` | 52 |
| `chrome_launch` | 4 |
| `egress_time_zone` | 4 |
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
| `chromeBrowserPssKb` | {'int': 968} |
| `chromeGpuPssKb` | {'int': 968} |
| `chromeOtherPssKb` | {'int': 968} |
| `chromeProcesses` | {'int': 968} |
| `chromeProfiles` | {'int': 968} |
| `chromeRendererMaxPssKb` | {'int': 968} |
| `chromeRendererPssKb` | {'int': 968} |
| `chromeRenderers` | {'int': 968} |
| `chromeTabs` | {'int': 968} |
| `chromeTabsProbedProfiles` | {'int': 968} |
| `chromeUtilityPssKb` | {'int': 968} |
| `desktopPssKb` | {'int': 968} |
| `hostPssKb` | {'int': 968} |
| `kind` | {'str': 968} |
| `memAvailableKb` | {'int': 968} |
| `memTotalKb` | {'int': 968} |
| `otherPssKb` | {'int': 968} |
| `processes` | {'int': 968} |
| `pssFallbackProcesses` | {'int': 968} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 52} |
| `graceS` | {'int': 29} |
| `kind` | {'str': 52} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 4} |
| `display` | {'int': 4} |
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `launcher` | {'int': 4} |
| `launcherSource` | {'str': 4} |
| `mode` | {'str': 4} |
| `outcome` | {'str': 4} |

### `egress_time_zone`

| key | types |
|-----|-------|
| `boxClockUtc` | {'bool': 4} |
| `kind` | {'str': 4} |
| `outcome` | {'str': 4} |
| `provider` | {'str': 4} |
| `source` | {'str': 4} |

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
| `cpuMillicores` | {'int': 168} |
| `display` | {'int': 172} |
| `kind` | {'str': 172} |
| `processes` | {'int': 172} |
| `pssKb` | {'int': 172} |
| `rendererMaxPssKb` | {'int': 172} |
| `renderers` | {'int': 172} |
| `tabs` | {'int': 172} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 52} |
| `failClosed` | {'bool': 52} |
| `kind` | {'str': 52} |
| `route` | {'str': 52} |
| `strict` | {'bool': 52} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
