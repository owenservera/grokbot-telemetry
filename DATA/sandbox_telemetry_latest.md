# sandbox_telemetry_parse — 2026-10-30 17:31:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1182031 lines=3196
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2327 |
| `chrome_profile_sample` | 561 |
| `egress_tunnel_connect` | 203 |
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
| `chromeBrowserPssKb` | {'int': 2327} |
| `chromeGpuPssKb` | {'int': 2327} |
| `chromeOtherPssKb` | {'int': 2327} |
| `chromeProcesses` | {'int': 2327} |
| `chromeProfiles` | {'int': 2327} |
| `chromeRendererMaxPssKb` | {'int': 2327} |
| `chromeRendererPssKb` | {'int': 2327} |
| `chromeRenderers` | {'int': 2327} |
| `chromeTabs` | {'int': 2327} |
| `chromeTabsProbedProfiles` | {'int': 2327} |
| `chromeUtilityPssKb` | {'int': 2327} |
| `desktopPssKb` | {'int': 2327} |
| `hostPssKb` | {'int': 2327} |
| `kind` | {'str': 2327} |
| `memAvailableKb` | {'int': 2327} |
| `memTotalKb` | {'int': 2327} |
| `otherPssKb` | {'int': 2327} |
| `processes` | {'int': 2327} |
| `pssFallbackProcesses` | {'int': 2327} |

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
| `cpuMillicores` | {'int': 552} |
| `display` | {'int': 561} |
| `kind` | {'str': 561} |
| `processes` | {'int': 561} |
| `pssKb` | {'int': 561} |
| `rendererMaxPssKb` | {'int': 561} |
| `renderers` | {'int': 561} |
| `tabs` | {'int': 561} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 203} |
| `failClosed` | {'bool': 203} |
| `kind` | {'str': 203} |
| `route` | {'str': 203} |
| `strict` | {'bool': 203} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
