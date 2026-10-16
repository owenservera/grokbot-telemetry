# sandbox_telemetry_parse — 2026-10-16 10:40:28 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=367972 lines=1375
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 904 |
| `memory_sample` | 462 |
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
| `chromeBrowserPssKb` | {'int': 462} |
| `chromeGpuPssKb` | {'int': 462} |
| `chromeOtherPssKb` | {'int': 462} |
| `chromeProcesses` | {'int': 462} |
| `chromeProfiles` | {'int': 462} |
| `chromeRendererMaxPssKb` | {'int': 462} |
| `chromeRendererPssKb` | {'int': 462} |
| `chromeRenderers` | {'int': 462} |
| `chromeTabs` | {'int': 462} |
| `chromeTabsProbedProfiles` | {'int': 462} |
| `chromeUtilityPssKb` | {'int': 462} |
| `desktopPssKb` | {'int': 462} |
| `hostPssKb` | {'int': 462} |
| `kind` | {'str': 462} |
| `memAvailableKb` | {'int': 462} |
| `memTotalKb` | {'int': 462} |
| `otherPssKb` | {'int': 462} |
| `processes` | {'int': 462} |
| `pssFallbackProcesses` | {'int': 462} |

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
| `cpuMillicores` | {'int': 901} |
| `display` | {'int': 904} |
| `kind` | {'str': 904} |
| `processes` | {'int': 904} |
| `pssKb` | {'int': 904} |
| `rendererMaxPssKb` | {'int': 904} |
| `renderers` | {'int': 904} |
| `tabs` | {'int': 903} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
