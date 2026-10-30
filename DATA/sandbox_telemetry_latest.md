# sandbox_telemetry_parse — 2026-10-30 11:51:41 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1003171 lines=2645
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2014 |
| `chrome_profile_sample` | 385 |
| `egress_tunnel_connect` | 143 |
| `egress_tunnel_desktop` | 82 |
| `chrome_launch` | 7 |
| `egress_time_zone` | 7 |
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
| `chromeBrowserPssKb` | {'int': 2014} |
| `chromeGpuPssKb` | {'int': 2014} |
| `chromeOtherPssKb` | {'int': 2014} |
| `chromeProcesses` | {'int': 2014} |
| `chromeProfiles` | {'int': 2014} |
| `chromeRendererMaxPssKb` | {'int': 2014} |
| `chromeRendererPssKb` | {'int': 2014} |
| `chromeRenderers` | {'int': 2014} |
| `chromeTabs` | {'int': 2014} |
| `chromeTabsProbedProfiles` | {'int': 2014} |
| `chromeUtilityPssKb` | {'int': 2014} |
| `desktopPssKb` | {'int': 2014} |
| `hostPssKb` | {'int': 2014} |
| `kind` | {'str': 2014} |
| `memAvailableKb` | {'int': 2014} |
| `memTotalKb` | {'int': 2014} |
| `otherPssKb` | {'int': 2014} |
| `processes` | {'int': 2014} |
| `pssFallbackProcesses` | {'int': 2014} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 82} |
| `graceS` | {'int': 47} |
| `kind` | {'str': 82} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 7} |
| `display` | {'int': 7} |
| `durationMs` | {'int': 7} |
| `kind` | {'str': 7} |
| `launcher` | {'int': 7} |
| `launcherSource` | {'str': 7} |
| `mode` | {'str': 7} |
| `outcome` | {'str': 7} |

### `egress_time_zone`

| key | types |
|-----|-------|
| `boxClockUtc` | {'bool': 7} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `provider` | {'str': 7} |
| `source` | {'str': 7} |

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
| `cpuMillicores` | {'int': 378} |
| `display` | {'int': 385} |
| `kind` | {'str': 385} |
| `processes` | {'int': 385} |
| `pssKb` | {'int': 385} |
| `rendererMaxPssKb` | {'int': 385} |
| `renderers` | {'int': 385} |
| `tabs` | {'int': 385} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 143} |
| `failClosed` | {'bool': 143} |
| `kind` | {'str': 143} |
| `route` | {'str': 143} |
| `strict` | {'bool': 143} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
