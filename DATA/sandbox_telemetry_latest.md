# sandbox_telemetry_parse — 2026-10-29 13:46:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=391318 lines=993
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 808 |
| `chrome_profile_sample` | 105 |
| `egress_tunnel_connect` | 36 |
| `egress_tunnel_desktop` | 33 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `egress_time_zone` | 2 |
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
| `chromeBrowserPssKb` | {'int': 808} |
| `chromeGpuPssKb` | {'int': 808} |
| `chromeOtherPssKb` | {'int': 808} |
| `chromeProcesses` | {'int': 808} |
| `chromeProfiles` | {'int': 808} |
| `chromeRendererMaxPssKb` | {'int': 808} |
| `chromeRendererPssKb` | {'int': 808} |
| `chromeRenderers` | {'int': 808} |
| `chromeTabs` | {'int': 808} |
| `chromeTabsProbedProfiles` | {'int': 808} |
| `chromeUtilityPssKb` | {'int': 808} |
| `desktopPssKb` | {'int': 808} |
| `hostPssKb` | {'int': 808} |
| `kind` | {'str': 808} |
| `memAvailableKb` | {'int': 808} |
| `memTotalKb` | {'int': 808} |
| `otherPssKb` | {'int': 808} |
| `processes` | {'int': 808} |
| `pssFallbackProcesses` | {'int': 808} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 33} |
| `graceS` | {'int': 18} |
| `kind` | {'str': 33} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

### `egress_time_zone`

| key | types |
|-----|-------|
| `boxClockUtc` | {'bool': 2} |
| `kind` | {'str': 2} |
| `outcome` | {'str': 2} |
| `provider` | {'str': 2} |
| `source` | {'str': 2} |

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
| `cpuMillicores` | {'int': 103} |
| `display` | {'int': 105} |
| `kind` | {'str': 105} |
| `processes` | {'int': 105} |
| `pssKb` | {'int': 105} |
| `rendererMaxPssKb` | {'int': 105} |
| `renderers` | {'int': 105} |
| `tabs` | {'int': 105} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 36} |
| `failClosed` | {'bool': 36} |
| `kind` | {'str': 36} |
| `route` | {'str': 36} |
| `strict` | {'bool': 36} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
