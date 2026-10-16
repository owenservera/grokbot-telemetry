# sandbox_telemetry_parse — 2026-10-16 10:56:10 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=379187 lines=1417
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 932 |
| `memory_sample` | 476 |
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
| `chromeBrowserPssKb` | {'int': 476} |
| `chromeGpuPssKb` | {'int': 476} |
| `chromeOtherPssKb` | {'int': 476} |
| `chromeProcesses` | {'int': 476} |
| `chromeProfiles` | {'int': 476} |
| `chromeRendererMaxPssKb` | {'int': 476} |
| `chromeRendererPssKb` | {'int': 476} |
| `chromeRenderers` | {'int': 476} |
| `chromeTabs` | {'int': 476} |
| `chromeTabsProbedProfiles` | {'int': 476} |
| `chromeUtilityPssKb` | {'int': 476} |
| `desktopPssKb` | {'int': 476} |
| `hostPssKb` | {'int': 476} |
| `kind` | {'str': 476} |
| `memAvailableKb` | {'int': 476} |
| `memTotalKb` | {'int': 476} |
| `otherPssKb` | {'int': 476} |
| `processes` | {'int': 476} |
| `pssFallbackProcesses` | {'int': 476} |

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
| `cpuMillicores` | {'int': 929} |
| `display` | {'int': 932} |
| `kind` | {'str': 932} |
| `processes` | {'int': 932} |
| `pssKb` | {'int': 932} |
| `rendererMaxPssKb` | {'int': 932} |
| `renderers` | {'int': 932} |
| `tabs` | {'int': 931} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
