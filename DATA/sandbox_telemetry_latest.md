# sandbox_telemetry_parse — 2026-10-16 20:53:31 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=823861 lines=3079
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 2040 |
| `memory_sample` | 1030 |
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
| `chromeBrowserPssKb` | {'int': 1030} |
| `chromeGpuPssKb` | {'int': 1030} |
| `chromeOtherPssKb` | {'int': 1030} |
| `chromeProcesses` | {'int': 1030} |
| `chromeProfiles` | {'int': 1030} |
| `chromeRendererMaxPssKb` | {'int': 1030} |
| `chromeRendererPssKb` | {'int': 1030} |
| `chromeRenderers` | {'int': 1030} |
| `chromeTabs` | {'int': 1030} |
| `chromeTabsProbedProfiles` | {'int': 1030} |
| `chromeUtilityPssKb` | {'int': 1030} |
| `desktopPssKb` | {'int': 1030} |
| `hostPssKb` | {'int': 1030} |
| `kind` | {'str': 1030} |
| `memAvailableKb` | {'int': 1030} |
| `memTotalKb` | {'int': 1030} |
| `otherPssKb` | {'int': 1030} |
| `processes` | {'int': 1030} |
| `pssFallbackProcesses` | {'int': 1030} |

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
| `cpuMillicores` | {'int': 2037} |
| `display` | {'int': 2040} |
| `kind` | {'str': 2040} |
| `processes` | {'int': 2040} |
| `pssKb` | {'int': 2040} |
| `rendererMaxPssKb` | {'int': 2040} |
| `renderers` | {'int': 2040} |
| `tabs` | {'int': 2039} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
