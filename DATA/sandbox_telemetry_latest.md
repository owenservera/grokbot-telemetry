# sandbox_telemetry_parse — 2026-10-29 14:48:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=426912 lines=1112
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 866 |
| `chrome_profile_sample` | 147 |
| `egress_tunnel_connect` | 44 |
| `egress_tunnel_desktop` | 42 |
| `boot_stage` | 3 |
| `chrome_launch` | 3 |
| `egress_time_zone` | 3 |
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
| `chromeBrowserPssKb` | {'int': 866} |
| `chromeGpuPssKb` | {'int': 866} |
| `chromeOtherPssKb` | {'int': 866} |
| `chromeProcesses` | {'int': 866} |
| `chromeProfiles` | {'int': 866} |
| `chromeRendererMaxPssKb` | {'int': 866} |
| `chromeRendererPssKb` | {'int': 866} |
| `chromeRenderers` | {'int': 866} |
| `chromeTabs` | {'int': 866} |
| `chromeTabsProbedProfiles` | {'int': 866} |
| `chromeUtilityPssKb` | {'int': 866} |
| `desktopPssKb` | {'int': 866} |
| `hostPssKb` | {'int': 866} |
| `kind` | {'str': 866} |
| `memAvailableKb` | {'int': 866} |
| `memTotalKb` | {'int': 866} |
| `otherPssKb` | {'int': 866} |
| `processes` | {'int': 866} |
| `pssFallbackProcesses` | {'int': 866} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 42} |
| `graceS` | {'int': 23} |
| `kind` | {'str': 42} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `display` | {'int': 3} |
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `launcher` | {'int': 3} |
| `launcherSource` | {'str': 3} |
| `mode` | {'str': 3} |
| `outcome` | {'str': 3} |

### `egress_time_zone`

| key | types |
|-----|-------|
| `boxClockUtc` | {'bool': 3} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `provider` | {'str': 3} |
| `source` | {'str': 3} |

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
| `cpuMillicores` | {'int': 144} |
| `display` | {'int': 147} |
| `kind` | {'str': 147} |
| `processes` | {'int': 147} |
| `pssKb` | {'int': 147} |
| `rendererMaxPssKb` | {'int': 147} |
| `renderers` | {'int': 147} |
| `tabs` | {'int': 147} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 44} |
| `failClosed` | {'bool': 44} |
| `kind` | {'str': 44} |
| `route` | {'str': 44} |
| `strict` | {'bool': 44} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
