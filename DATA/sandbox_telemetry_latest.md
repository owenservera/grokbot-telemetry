# sandbox_telemetry_parse — 2026-10-16 19:08:49 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=749987 lines=2803
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1856 |
| `memory_sample` | 938 |
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
| `chromeBrowserPssKb` | {'int': 938} |
| `chromeGpuPssKb` | {'int': 938} |
| `chromeOtherPssKb` | {'int': 938} |
| `chromeProcesses` | {'int': 938} |
| `chromeProfiles` | {'int': 938} |
| `chromeRendererMaxPssKb` | {'int': 938} |
| `chromeRendererPssKb` | {'int': 938} |
| `chromeRenderers` | {'int': 938} |
| `chromeTabs` | {'int': 938} |
| `chromeTabsProbedProfiles` | {'int': 938} |
| `chromeUtilityPssKb` | {'int': 938} |
| `desktopPssKb` | {'int': 938} |
| `hostPssKb` | {'int': 938} |
| `kind` | {'str': 938} |
| `memAvailableKb` | {'int': 938} |
| `memTotalKb` | {'int': 938} |
| `otherPssKb` | {'int': 938} |
| `processes` | {'int': 938} |
| `pssFallbackProcesses` | {'int': 938} |

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
| `cpuMillicores` | {'int': 1853} |
| `display` | {'int': 1856} |
| `kind` | {'str': 1856} |
| `processes` | {'int': 1856} |
| `pssKb` | {'int': 1856} |
| `rendererMaxPssKb` | {'int': 1856} |
| `renderers` | {'int': 1856} |
| `tabs` | {'int': 1855} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
