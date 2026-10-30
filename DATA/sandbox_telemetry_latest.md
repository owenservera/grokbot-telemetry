# sandbox_telemetry_parse — 2026-10-30 17:01:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1155668 lines=3084
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2297 |
| `chrome_profile_sample` | 501 |
| `egress_tunnel_connect` | 181 |
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
| `chromeBrowserPssKb` | {'int': 2297} |
| `chromeGpuPssKb` | {'int': 2297} |
| `chromeOtherPssKb` | {'int': 2297} |
| `chromeProcesses` | {'int': 2297} |
| `chromeProfiles` | {'int': 2297} |
| `chromeRendererMaxPssKb` | {'int': 2297} |
| `chromeRendererPssKb` | {'int': 2297} |
| `chromeRenderers` | {'int': 2297} |
| `chromeTabs` | {'int': 2297} |
| `chromeTabsProbedProfiles` | {'int': 2297} |
| `chromeUtilityPssKb` | {'int': 2297} |
| `desktopPssKb` | {'int': 2297} |
| `hostPssKb` | {'int': 2297} |
| `kind` | {'str': 2297} |
| `memAvailableKb` | {'int': 2297} |
| `memTotalKb` | {'int': 2297} |
| `otherPssKb` | {'int': 2297} |
| `processes` | {'int': 2297} |
| `pssFallbackProcesses` | {'int': 2297} |

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
| `cpuMillicores` | {'int': 492} |
| `display` | {'int': 501} |
| `kind` | {'str': 501} |
| `processes` | {'int': 501} |
| `pssKb` | {'int': 501} |
| `rendererMaxPssKb` | {'int': 501} |
| `renderers` | {'int': 501} |
| `tabs` | {'int': 501} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 181} |
| `failClosed` | {'bool': 181} |
| `kind` | {'str': 181} |
| `route` | {'str': 181} |
| `strict` | {'bool': 181} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
