# sandbox_telemetry_parse — 2026-10-29 13:30:38 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=381733 lines=963
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 793 |
| `chrome_profile_sample` | 90 |
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
| `chromeBrowserPssKb` | {'int': 793} |
| `chromeGpuPssKb` | {'int': 793} |
| `chromeOtherPssKb` | {'int': 793} |
| `chromeProcesses` | {'int': 793} |
| `chromeProfiles` | {'int': 793} |
| `chromeRendererMaxPssKb` | {'int': 793} |
| `chromeRendererPssKb` | {'int': 793} |
| `chromeRenderers` | {'int': 793} |
| `chromeTabs` | {'int': 793} |
| `chromeTabsProbedProfiles` | {'int': 793} |
| `chromeUtilityPssKb` | {'int': 793} |
| `desktopPssKb` | {'int': 793} |
| `hostPssKb` | {'int': 793} |
| `kind` | {'str': 793} |
| `memAvailableKb` | {'int': 793} |
| `memTotalKb` | {'int': 793} |
| `otherPssKb` | {'int': 793} |
| `processes` | {'int': 793} |
| `pssFallbackProcesses` | {'int': 793} |

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
| `cpuMillicores` | {'int': 88} |
| `display` | {'int': 90} |
| `kind` | {'str': 90} |
| `processes` | {'int': 90} |
| `pssKb` | {'int': 90} |
| `rendererMaxPssKb` | {'int': 90} |
| `renderers` | {'int': 90} |
| `tabs` | {'int': 90} |

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
