# sandbox_telemetry_parse — 2026-10-30 18:14:33 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1219679 lines=3361
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2369 |
| `chrome_profile_sample` | 645 |
| `egress_tunnel_connect` | 241 |
| `egress_tunnel_desktop` | 83 |
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
| `chromeBrowserPssKb` | {'int': 2369} |
| `chromeGpuPssKb` | {'int': 2369} |
| `chromeOtherPssKb` | {'int': 2369} |
| `chromeProcesses` | {'int': 2369} |
| `chromeProfiles` | {'int': 2369} |
| `chromeRendererMaxPssKb` | {'int': 2369} |
| `chromeRendererPssKb` | {'int': 2369} |
| `chromeRenderers` | {'int': 2369} |
| `chromeTabs` | {'int': 2369} |
| `chromeTabsProbedProfiles` | {'int': 2369} |
| `chromeUtilityPssKb` | {'int': 2369} |
| `desktopPssKb` | {'int': 2369} |
| `hostPssKb` | {'int': 2369} |
| `kind` | {'str': 2369} |
| `memAvailableKb` | {'int': 2369} |
| `memTotalKb` | {'int': 2369} |
| `otherPssKb` | {'int': 2369} |
| `processes` | {'int': 2369} |
| `pssFallbackProcesses` | {'int': 2369} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 83} |
| `graceS` | {'int': 47} |
| `kind` | {'str': 83} |

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
| `cpuMillicores` | {'int': 636} |
| `display` | {'int': 645} |
| `kind` | {'str': 645} |
| `processes` | {'int': 645} |
| `pssKb` | {'int': 645} |
| `rendererMaxPssKb` | {'int': 645} |
| `renderers` | {'int': 645} |
| `tabs` | {'int': 645} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 241} |
| `failClosed` | {'bool': 241} |
| `kind` | {'str': 241} |
| `route` | {'str': 241} |
| `strict` | {'bool': 241} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
