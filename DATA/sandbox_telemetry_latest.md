# sandbox_telemetry_parse — 2026-10-30 16:30:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1128026 lines=2964
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2266 |
| `chrome_profile_sample` | 439 |
| `egress_tunnel_connect` | 154 |
| `egress_tunnel_desktop` | 82 |
| `chrome_launch` | 8 |
| `egress_time_zone` | 8 |
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
| `chromeBrowserPssKb` | {'int': 2266} |
| `chromeGpuPssKb` | {'int': 2266} |
| `chromeOtherPssKb` | {'int': 2266} |
| `chromeProcesses` | {'int': 2266} |
| `chromeProfiles` | {'int': 2266} |
| `chromeRendererMaxPssKb` | {'int': 2266} |
| `chromeRendererPssKb` | {'int': 2266} |
| `chromeRenderers` | {'int': 2266} |
| `chromeTabs` | {'int': 2266} |
| `chromeTabsProbedProfiles` | {'int': 2266} |
| `chromeUtilityPssKb` | {'int': 2266} |
| `desktopPssKb` | {'int': 2266} |
| `hostPssKb` | {'int': 2266} |
| `kind` | {'str': 2266} |
| `memAvailableKb` | {'int': 2266} |
| `memTotalKb` | {'int': 2266} |
| `otherPssKb` | {'int': 2266} |
| `processes` | {'int': 2266} |
| `pssFallbackProcesses` | {'int': 2266} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 82} |
| `graceS` | {'int': 47} |
| `kind` | {'str': 82} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 8} |
| `display` | {'int': 8} |
| `durationMs` | {'int': 8} |
| `kind` | {'str': 8} |
| `launcher` | {'int': 8} |
| `launcherSource` | {'str': 8} |
| `mode` | {'str': 8} |
| `outcome` | {'str': 8} |

### `egress_time_zone`

| key | types |
|-----|-------|
| `boxClockUtc` | {'bool': 8} |
| `kind` | {'str': 8} |
| `outcome` | {'str': 8} |
| `provider` | {'str': 8} |
| `source` | {'str': 8} |

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
| `cpuMillicores` | {'int': 430} |
| `display` | {'int': 439} |
| `kind` | {'str': 439} |
| `processes` | {'int': 439} |
| `pssKb` | {'int': 439} |
| `rendererMaxPssKb` | {'int': 439} |
| `renderers` | {'int': 439} |
| `tabs` | {'int': 439} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 154} |
| `failClosed` | {'bool': 154} |
| `kind` | {'str': 154} |
| `route` | {'str': 154} |
| `strict` | {'bool': 154} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
