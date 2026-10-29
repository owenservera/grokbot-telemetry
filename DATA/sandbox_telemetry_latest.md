# sandbox_telemetry_parse — 2026-10-29 19:28:26 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=566209 lines=1528
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1125 |
| `chrome_profile_sample` | 236 |
| `egress_tunnel_connect` | 80 |
| `egress_tunnel_desktop` | 70 |
| `chrome_launch` | 5 |
| `egress_time_zone` | 5 |
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
| `chromeBrowserPssKb` | {'int': 1125} |
| `chromeGpuPssKb` | {'int': 1125} |
| `chromeOtherPssKb` | {'int': 1125} |
| `chromeProcesses` | {'int': 1125} |
| `chromeProfiles` | {'int': 1125} |
| `chromeRendererMaxPssKb` | {'int': 1125} |
| `chromeRendererPssKb` | {'int': 1125} |
| `chromeRenderers` | {'int': 1125} |
| `chromeTabs` | {'int': 1125} |
| `chromeTabsProbedProfiles` | {'int': 1125} |
| `chromeUtilityPssKb` | {'int': 1125} |
| `desktopPssKb` | {'int': 1125} |
| `hostPssKb` | {'int': 1125} |
| `kind` | {'str': 1125} |
| `memAvailableKb` | {'int': 1125} |
| `memTotalKb` | {'int': 1125} |
| `otherPssKb` | {'int': 1125} |
| `processes` | {'int': 1125} |
| `pssFallbackProcesses` | {'int': 1125} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 70} |
| `graceS` | {'int': 39} |
| `kind` | {'str': 70} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 5} |
| `display` | {'int': 5} |
| `durationMs` | {'int': 5} |
| `kind` | {'str': 5} |
| `launcher` | {'int': 5} |
| `launcherSource` | {'str': 5} |
| `mode` | {'str': 5} |
| `outcome` | {'str': 5} |

### `egress_time_zone`

| key | types |
|-----|-------|
| `boxClockUtc` | {'bool': 5} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `provider` | {'str': 5} |
| `source` | {'str': 5} |

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
| `cpuMillicores` | {'int': 231} |
| `display` | {'int': 236} |
| `kind` | {'str': 236} |
| `processes` | {'int': 236} |
| `pssKb` | {'int': 236} |
| `rendererMaxPssKb` | {'int': 236} |
| `renderers` | {'int': 236} |
| `tabs` | {'int': 236} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 80} |
| `failClosed` | {'bool': 80} |
| `kind` | {'str': 80} |
| `route` | {'str': 80} |
| `strict` | {'bool': 80} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
