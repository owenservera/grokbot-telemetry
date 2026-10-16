# sandbox_telemetry_parse — 2026-10-16 20:48:43 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=819845 lines=3064
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 2030 |
| `memory_sample` | 1025 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 1025} |
| `chromeGpuPssKb` | {'int': 1025} |
| `chromeOtherPssKb` | {'int': 1025} |
| `chromeProcesses` | {'int': 1025} |
| `chromeProfiles` | {'int': 1025} |
| `chromeRendererMaxPssKb` | {'int': 1025} |
| `chromeRendererPssKb` | {'int': 1025} |
| `chromeRenderers` | {'int': 1025} |
| `chromeTabs` | {'int': 1025} |
| `chromeTabsProbedProfiles` | {'int': 1025} |
| `chromeUtilityPssKb` | {'int': 1025} |
| `desktopPssKb` | {'int': 1025} |
| `hostPssKb` | {'int': 1025} |
| `kind` | {'str': 1025} |
| `memAvailableKb` | {'int': 1025} |
| `memTotalKb` | {'int': 1025} |
| `otherPssKb` | {'int': 1025} |
| `processes` | {'int': 1025} |
| `pssFallbackProcesses` | {'int': 1025} |

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
| `cpuMillicores` | {'int': 2027} |
| `display` | {'int': 2030} |
| `kind` | {'str': 2030} |
| `processes` | {'int': 2030} |
| `pssKb` | {'int': 2030} |
| `rendererMaxPssKb` | {'int': 2030} |
| `renderers` | {'int': 2030} |
| `tabs` | {'int': 2029} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
