# sandbox_telemetry_parse — 2026-10-28 23:50:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=49050 lines=189
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 72 |
| `chrome_profile_sample` | 65 |
| `egress_tunnel_connect` | 27 |
| `egress_tunnel_desktop` | 16 |
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
| `chromeBrowserPssKb` | {'int': 72} |
| `chromeGpuPssKb` | {'int': 72} |
| `chromeOtherPssKb` | {'int': 72} |
| `chromeProcesses` | {'int': 72} |
| `chromeProfiles` | {'int': 72} |
| `chromeRendererMaxPssKb` | {'int': 72} |
| `chromeRendererPssKb` | {'int': 72} |
| `chromeRenderers` | {'int': 72} |
| `chromeTabs` | {'int': 72} |
| `chromeTabsProbedProfiles` | {'int': 72} |
| `chromeUtilityPssKb` | {'int': 72} |
| `desktopPssKb` | {'int': 72} |
| `hostPssKb` | {'int': 72} |
| `kind` | {'str': 72} |
| `memAvailableKb` | {'int': 72} |
| `memTotalKb` | {'int': 72} |
| `otherPssKb` | {'int': 72} |
| `processes` | {'int': 72} |
| `pssFallbackProcesses` | {'int': 72} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 16} |
| `graceS` | {'int': 8} |
| `kind` | {'str': 16} |

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
| `cpuMillicores` | {'int': 64} |
| `display` | {'int': 65} |
| `kind` | {'str': 65} |
| `processes` | {'int': 65} |
| `pssKb` | {'int': 65} |
| `rendererMaxPssKb` | {'int': 65} |
| `renderers` | {'int': 65} |
| `tabs` | {'int': 65} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 27} |
| `failClosed` | {'bool': 27} |
| `kind` | {'str': 27} |
| `route` | {'str': 27} |
| `strict` | {'bool': 27} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
