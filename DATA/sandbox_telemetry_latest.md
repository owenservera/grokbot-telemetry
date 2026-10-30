# sandbox_telemetry_parse — 2026-10-30 11:45:54 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=999012 lines=2629
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2008 |
| `chrome_profile_sample` | 379 |
| `egress_tunnel_connect` | 141 |
| `egress_tunnel_desktop` | 80 |
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
| `chromeBrowserPssKb` | {'int': 2008} |
| `chromeGpuPssKb` | {'int': 2008} |
| `chromeOtherPssKb` | {'int': 2008} |
| `chromeProcesses` | {'int': 2008} |
| `chromeProfiles` | {'int': 2008} |
| `chromeRendererMaxPssKb` | {'int': 2008} |
| `chromeRendererPssKb` | {'int': 2008} |
| `chromeRenderers` | {'int': 2008} |
| `chromeTabs` | {'int': 2008} |
| `chromeTabsProbedProfiles` | {'int': 2008} |
| `chromeUtilityPssKb` | {'int': 2008} |
| `desktopPssKb` | {'int': 2008} |
| `hostPssKb` | {'int': 2008} |
| `kind` | {'str': 2008} |
| `memAvailableKb` | {'int': 2008} |
| `memTotalKb` | {'int': 2008} |
| `otherPssKb` | {'int': 2008} |
| `processes` | {'int': 2008} |
| `pssFallbackProcesses` | {'int': 2008} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 80} |
| `graceS` | {'int': 45} |
| `kind` | {'str': 80} |

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
| `cpuMillicores` | {'int': 372} |
| `display` | {'int': 379} |
| `kind` | {'str': 379} |
| `processes` | {'int': 379} |
| `pssKb` | {'int': 379} |
| `rendererMaxPssKb` | {'int': 379} |
| `renderers` | {'int': 379} |
| `tabs` | {'int': 379} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 141} |
| `failClosed` | {'bool': 141} |
| `kind` | {'str': 141} |
| `route` | {'str': 141} |
| `strict` | {'bool': 141} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
