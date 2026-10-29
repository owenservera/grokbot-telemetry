# sandbox_telemetry_parse — 2026-10-29 16:51:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=485741 lines=1285
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 977 |
| `chrome_profile_sample` | 181 |
| `egress_tunnel_connect` | 58 |
| `egress_tunnel_desktop` | 54 |
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
| `chromeBrowserPssKb` | {'int': 977} |
| `chromeGpuPssKb` | {'int': 977} |
| `chromeOtherPssKb` | {'int': 977} |
| `chromeProcesses` | {'int': 977} |
| `chromeProfiles` | {'int': 977} |
| `chromeRendererMaxPssKb` | {'int': 977} |
| `chromeRendererPssKb` | {'int': 977} |
| `chromeRenderers` | {'int': 977} |
| `chromeTabs` | {'int': 977} |
| `chromeTabsProbedProfiles` | {'int': 977} |
| `chromeUtilityPssKb` | {'int': 977} |
| `desktopPssKb` | {'int': 977} |
| `hostPssKb` | {'int': 977} |
| `kind` | {'str': 977} |
| `memAvailableKb` | {'int': 977} |
| `memTotalKb` | {'int': 977} |
| `otherPssKb` | {'int': 977} |
| `processes` | {'int': 977} |
| `pssFallbackProcesses` | {'int': 977} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 54} |
| `graceS` | {'int': 30} |
| `kind` | {'str': 54} |

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
| `cpuMillicores` | {'int': 177} |
| `display` | {'int': 181} |
| `kind` | {'str': 181} |
| `processes` | {'int': 181} |
| `pssKb` | {'int': 181} |
| `rendererMaxPssKb` | {'int': 181} |
| `renderers` | {'int': 181} |
| `tabs` | {'int': 181} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 58} |
| `failClosed` | {'bool': 58} |
| `kind` | {'str': 58} |
| `route` | {'str': 58} |
| `strict` | {'bool': 58} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
