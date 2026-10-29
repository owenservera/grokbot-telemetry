# sandbox_telemetry_parse — 2026-10-29 14:53:09 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=430298 lines=1124
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 871 |
| `chrome_profile_sample` | 152 |
| `egress_tunnel_connect` | 46 |
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
| `chromeBrowserPssKb` | {'int': 871} |
| `chromeGpuPssKb` | {'int': 871} |
| `chromeOtherPssKb` | {'int': 871} |
| `chromeProcesses` | {'int': 871} |
| `chromeProfiles` | {'int': 871} |
| `chromeRendererMaxPssKb` | {'int': 871} |
| `chromeRendererPssKb` | {'int': 871} |
| `chromeRenderers` | {'int': 871} |
| `chromeTabs` | {'int': 871} |
| `chromeTabsProbedProfiles` | {'int': 871} |
| `chromeUtilityPssKb` | {'int': 871} |
| `desktopPssKb` | {'int': 871} |
| `hostPssKb` | {'int': 871} |
| `kind` | {'str': 871} |
| `memAvailableKb` | {'int': 871} |
| `memTotalKb` | {'int': 871} |
| `otherPssKb` | {'int': 871} |
| `processes` | {'int': 871} |
| `pssFallbackProcesses` | {'int': 871} |

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
| `cpuMillicores` | {'int': 149} |
| `display` | {'int': 152} |
| `kind` | {'str': 152} |
| `processes` | {'int': 152} |
| `pssKb` | {'int': 152} |
| `rendererMaxPssKb` | {'int': 152} |
| `renderers` | {'int': 152} |
| `tabs` | {'int': 152} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 46} |
| `failClosed` | {'bool': 46} |
| `kind` | {'str': 46} |
| `route` | {'str': 46} |
| `strict` | {'bool': 46} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
