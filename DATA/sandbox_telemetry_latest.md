# sandbox_telemetry_parse — 2026-10-30 17:43:23 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1192066 lines=3241
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2338 |
| `chrome_profile_sample` | 583 |
| `egress_tunnel_connect` | 215 |
| `egress_tunnel_desktop` | 82 |
| `chrome_launch` | 8 |
| `egress_time_zone` | 8 |
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
| `chromeBrowserPssKb` | {'int': 2338} |
| `chromeGpuPssKb` | {'int': 2338} |
| `chromeOtherPssKb` | {'int': 2338} |
| `chromeProcesses` | {'int': 2338} |
| `chromeProfiles` | {'int': 2338} |
| `chromeRendererMaxPssKb` | {'int': 2338} |
| `chromeRendererPssKb` | {'int': 2338} |
| `chromeRenderers` | {'int': 2338} |
| `chromeTabs` | {'int': 2338} |
| `chromeTabsProbedProfiles` | {'int': 2338} |
| `chromeUtilityPssKb` | {'int': 2338} |
| `desktopPssKb` | {'int': 2338} |
| `hostPssKb` | {'int': 2338} |
| `kind` | {'str': 2338} |
| `memAvailableKb` | {'int': 2338} |
| `memTotalKb` | {'int': 2338} |
| `otherPssKb` | {'int': 2338} |
| `processes` | {'int': 2338} |
| `pssFallbackProcesses` | {'int': 2338} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 82} |
| `graceS` | {'int': 47} |
| `kind` | {'str': 82} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 8} |
| `display` | {'int': 8} |
| `durationMs` | {'int': 8} |
| `kind` | {'str': 8} |
| `launcher` | {'int': 8} |
| `launcherSource` | {'str': 8} |
| `mode` | {'str': 8} |
| `outcome` | {'str': 8} |

### `egress_time_zone`

| key | types |
|-----|-------|
| `boxClockUtc` | {'bool': 8} |
| `kind` | {'str': 8} |
| `outcome` | {'str': 8} |
| `provider` | {'str': 8} |
| `source` | {'str': 8} |

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
| `cpuMillicores` | {'int': 574} |
| `display` | {'int': 583} |
| `kind` | {'str': 583} |
| `processes` | {'int': 583} |
| `pssKb` | {'int': 583} |
| `rendererMaxPssKb` | {'int': 583} |
| `renderers` | {'int': 583} |
| `tabs` | {'int': 583} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 215} |
| `failClosed` | {'bool': 215} |
| `kind` | {'str': 215} |
| `route` | {'str': 215} |
| `strict` | {'bool': 215} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
