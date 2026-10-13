# sandbox_telemetry_parse — 2026-10-13 07:05:09 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=907037 lines=2209
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1870 |
| `chrome_profile_sample` | 331 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

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
| `chromeBrowserPssKb` | {'int': 1870} |
| `chromeGpuPssKb` | {'int': 1870} |
| `chromeOtherPssKb` | {'int': 1870} |
| `chromeProcesses` | {'int': 1870} |
| `chromeProfiles` | {'int': 1870} |
| `chromeRendererMaxPssKb` | {'int': 1870} |
| `chromeRendererPssKb` | {'int': 1870} |
| `chromeRenderers` | {'int': 1870} |
| `chromeTabs` | {'int': 1870} |
| `chromeTabsProbedProfiles` | {'int': 1870} |
| `chromeUtilityPssKb` | {'int': 1870} |
| `desktopPssKb` | {'int': 1870} |
| `hostPssKb` | {'int': 1870} |
| `kind` | {'str': 1870} |
| `memAvailableKb` | {'int': 1870} |
| `memTotalKb` | {'int': 1870} |
| `otherPssKb` | {'int': 1870} |
| `processes` | {'int': 1870} |
| `pssFallbackProcesses` | {'int': 1870} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `cpuMillicores` | {'int': 330} |
| `display` | {'int': 331} |
| `kind` | {'str': 331} |
| `processes` | {'int': 331} |
| `pssKb` | {'int': 331} |
| `rendererMaxPssKb` | {'int': 331} |
| `renderers` | {'int': 331} |
| `tabs` | {'int': 331} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
