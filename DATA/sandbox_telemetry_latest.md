# sandbox_telemetry_parse — 2026-10-28 15:39:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1176626 lines=2644
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2578 |
| `chrome_profile_sample` | 45 |
| `egress_tunnel_connect` | 6 |
| `egress_tunnel_desktop` | 5 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |
| `egress_time_zone` | 1 |
| `process_crash` | 1 |

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
| `chromeBrowserPssKb` | {'int': 2578} |
| `chromeGpuPssKb` | {'int': 2578} |
| `chromeOtherPssKb` | {'int': 2578} |
| `chromeProcesses` | {'int': 2578} |
| `chromeProfiles` | {'int': 2578} |
| `chromeRendererMaxPssKb` | {'int': 2578} |
| `chromeRendererPssKb` | {'int': 2578} |
| `chromeRenderers` | {'int': 2578} |
| `chromeTabs` | {'int': 2578} |
| `chromeTabsProbedProfiles` | {'int': 2578} |
| `chromeUtilityPssKb` | {'int': 2578} |
| `desktopPssKb` | {'int': 2578} |
| `hostPssKb` | {'int': 2578} |
| `kind` | {'str': 2578} |
| `memAvailableKb` | {'int': 2578} |
| `memTotalKb` | {'int': 2578} |
| `otherPssKb` | {'int': 2578} |
| `processes` | {'int': 2578} |
| `pssFallbackProcesses` | {'int': 2578} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 5} |
| `graceS` | {'int': 3} |
| `kind` | {'str': 5} |

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

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 6} |
| `failClosed` | {'bool': 6} |
| `kind` | {'str': 6} |
| `route` | {'str': 6} |
| `strict` | {'bool': 6} |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 44} |
| `display` | {'int': 45} |
| `kind` | {'str': 45} |
| `processes` | {'int': 45} |
| `pssKb` | {'int': 45} |
| `rendererMaxPssKb` | {'int': 45} |
| `renderers` | {'int': 45} |
| `tabs` | {'int': 45} |

### `process_crash`

| key | types |
|-----|-------|
| `binary` | {'str': 1} |
| `count` | {'int': 1} |
| `kind` | {'str': 1} |
| `signal` | {'str': 1} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
