# sandbox_telemetry_parse — 2026-10-16 21:27:30 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=843938 lines=3154
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 2090 |
| `memory_sample` | 1055 |
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
| `chromeBrowserPssKb` | {'int': 1055} |
| `chromeGpuPssKb` | {'int': 1055} |
| `chromeOtherPssKb` | {'int': 1055} |
| `chromeProcesses` | {'int': 1055} |
| `chromeProfiles` | {'int': 1055} |
| `chromeRendererMaxPssKb` | {'int': 1055} |
| `chromeRendererPssKb` | {'int': 1055} |
| `chromeRenderers` | {'int': 1055} |
| `chromeTabs` | {'int': 1055} |
| `chromeTabsProbedProfiles` | {'int': 1055} |
| `chromeUtilityPssKb` | {'int': 1055} |
| `desktopPssKb` | {'int': 1055} |
| `hostPssKb` | {'int': 1055} |
| `kind` | {'str': 1055} |
| `memAvailableKb` | {'int': 1055} |
| `memTotalKb` | {'int': 1055} |
| `otherPssKb` | {'int': 1055} |
| `processes` | {'int': 1055} |
| `pssFallbackProcesses` | {'int': 1055} |

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
| `cpuMillicores` | {'int': 2087} |
| `display` | {'int': 2090} |
| `kind` | {'str': 2090} |
| `processes` | {'int': 2090} |
| `pssKb` | {'int': 2090} |
| `rendererMaxPssKb` | {'int': 2090} |
| `renderers` | {'int': 2090} |
| `tabs` | {'int': 2089} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
