# sandbox_telemetry_parse — 2026-10-29 16:46:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=482944 lines=1274
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 973 |
| `chrome_profile_sample` | 177 |
| `egress_tunnel_connect` | 56 |
| `egress_tunnel_desktop` | 53 |
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
| `chromeBrowserPssKb` | {'int': 973} |
| `chromeGpuPssKb` | {'int': 973} |
| `chromeOtherPssKb` | {'int': 973} |
| `chromeProcesses` | {'int': 973} |
| `chromeProfiles` | {'int': 973} |
| `chromeRendererMaxPssKb` | {'int': 973} |
| `chromeRendererPssKb` | {'int': 973} |
| `chromeRenderers` | {'int': 973} |
| `chromeTabs` | {'int': 973} |
| `chromeTabsProbedProfiles` | {'int': 973} |
| `chromeUtilityPssKb` | {'int': 973} |
| `desktopPssKb` | {'int': 973} |
| `hostPssKb` | {'int': 973} |
| `kind` | {'str': 973} |
| `memAvailableKb` | {'int': 973} |
| `memTotalKb` | {'int': 973} |
| `otherPssKb` | {'int': 973} |
| `processes` | {'int': 973} |
| `pssFallbackProcesses` | {'int': 973} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 53} |
| `graceS` | {'int': 30} |
| `kind` | {'str': 53} |

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
| `cpuMillicores` | {'int': 173} |
| `display` | {'int': 177} |
| `kind` | {'str': 177} |
| `processes` | {'int': 177} |
| `pssKb` | {'int': 177} |
| `rendererMaxPssKb` | {'int': 177} |
| `renderers` | {'int': 177} |
| `tabs` | {'int': 177} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 56} |
| `failClosed` | {'bool': 56} |
| `kind` | {'str': 56} |
| `route` | {'str': 56} |
| `strict` | {'bool': 56} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
