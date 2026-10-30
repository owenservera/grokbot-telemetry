# sandbox_telemetry_parse — 2026-10-30 18:18:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1223110 lines=3375
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2373 |
| `chrome_profile_sample` | 653 |
| `egress_tunnel_connect` | 243 |
| `egress_tunnel_desktop` | 83 |
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
| `chromeBrowserPssKb` | {'int': 2373} |
| `chromeGpuPssKb` | {'int': 2373} |
| `chromeOtherPssKb` | {'int': 2373} |
| `chromeProcesses` | {'int': 2373} |
| `chromeProfiles` | {'int': 2373} |
| `chromeRendererMaxPssKb` | {'int': 2373} |
| `chromeRendererPssKb` | {'int': 2373} |
| `chromeRenderers` | {'int': 2373} |
| `chromeTabs` | {'int': 2373} |
| `chromeTabsProbedProfiles` | {'int': 2373} |
| `chromeUtilityPssKb` | {'int': 2373} |
| `desktopPssKb` | {'int': 2373} |
| `hostPssKb` | {'int': 2373} |
| `kind` | {'str': 2373} |
| `memAvailableKb` | {'int': 2373} |
| `memTotalKb` | {'int': 2373} |
| `otherPssKb` | {'int': 2373} |
| `processes` | {'int': 2373} |
| `pssFallbackProcesses` | {'int': 2373} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 83} |
| `graceS` | {'int': 47} |
| `kind` | {'str': 83} |

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
| `cpuMillicores` | {'int': 644} |
| `display` | {'int': 653} |
| `kind` | {'str': 653} |
| `processes` | {'int': 653} |
| `pssKb` | {'int': 653} |
| `rendererMaxPssKb` | {'int': 653} |
| `renderers` | {'int': 653} |
| `tabs` | {'int': 653} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 243} |
| `failClosed` | {'bool': 243} |
| `kind` | {'str': 243} |
| `route` | {'str': 243} |
| `strict` | {'bool': 243} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
