# sandbox_telemetry_parse — 2026-10-30 16:15:14 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1115676 lines=2916
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2251 |
| `chrome_profile_sample` | 409 |
| `egress_tunnel_connect` | 151 |
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
| `chromeBrowserPssKb` | {'int': 2251} |
| `chromeGpuPssKb` | {'int': 2251} |
| `chromeOtherPssKb` | {'int': 2251} |
| `chromeProcesses` | {'int': 2251} |
| `chromeProfiles` | {'int': 2251} |
| `chromeRendererMaxPssKb` | {'int': 2251} |
| `chromeRendererPssKb` | {'int': 2251} |
| `chromeRenderers` | {'int': 2251} |
| `chromeTabs` | {'int': 2251} |
| `chromeTabsProbedProfiles` | {'int': 2251} |
| `chromeUtilityPssKb` | {'int': 2251} |
| `desktopPssKb` | {'int': 2251} |
| `hostPssKb` | {'int': 2251} |
| `kind` | {'str': 2251} |
| `memAvailableKb` | {'int': 2251} |
| `memTotalKb` | {'int': 2251} |
| `otherPssKb` | {'int': 2251} |
| `processes` | {'int': 2251} |
| `pssFallbackProcesses` | {'int': 2251} |

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
| `cpuMillicores` | {'int': 400} |
| `display` | {'int': 409} |
| `kind` | {'str': 409} |
| `processes` | {'int': 409} |
| `pssKb` | {'int': 409} |
| `rendererMaxPssKb` | {'int': 409} |
| `renderers` | {'int': 409} |
| `tabs` | {'int': 409} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 151} |
| `failClosed` | {'bool': 151} |
| `kind` | {'str': 151} |
| `route` | {'str': 151} |
| `strict` | {'bool': 151} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
