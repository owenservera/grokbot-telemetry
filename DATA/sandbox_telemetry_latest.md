# sandbox_telemetry_parse — 2026-10-30 17:44:32 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1193686 lines=3247
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2340 |
| `chrome_profile_sample` | 587 |
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
| `chromeBrowserPssKb` | {'int': 2340} |
| `chromeGpuPssKb` | {'int': 2340} |
| `chromeOtherPssKb` | {'int': 2340} |
| `chromeProcesses` | {'int': 2340} |
| `chromeProfiles` | {'int': 2340} |
| `chromeRendererMaxPssKb` | {'int': 2340} |
| `chromeRendererPssKb` | {'int': 2340} |
| `chromeRenderers` | {'int': 2340} |
| `chromeTabs` | {'int': 2340} |
| `chromeTabsProbedProfiles` | {'int': 2340} |
| `chromeUtilityPssKb` | {'int': 2340} |
| `desktopPssKb` | {'int': 2340} |
| `hostPssKb` | {'int': 2340} |
| `kind` | {'str': 2340} |
| `memAvailableKb` | {'int': 2340} |
| `memTotalKb` | {'int': 2340} |
| `otherPssKb` | {'int': 2340} |
| `processes` | {'int': 2340} |
| `pssFallbackProcesses` | {'int': 2340} |

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
| `cpuMillicores` | {'int': 578} |
| `display` | {'int': 587} |
| `kind` | {'str': 587} |
| `processes` | {'int': 587} |
| `pssKb` | {'int': 587} |
| `rendererMaxPssKb` | {'int': 587} |
| `renderers` | {'int': 587} |
| `tabs` | {'int': 587} |

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
