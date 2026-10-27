# sandbox_telemetry_parse — 2026-10-27 02:39:38 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=274868 lines=611
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 606 |
| `boot_stage` | 3 |
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
| `chromeBrowserPssKb` | {'int': 606} |
| `chromeGpuPssKb` | {'int': 606} |
| `chromeOtherPssKb` | {'int': 606} |
| `chromeProcesses` | {'int': 606} |
| `chromeProfiles` | {'int': 606} |
| `chromeRendererMaxPssKb` | {'int': 606} |
| `chromeRendererPssKb` | {'int': 606} |
| `chromeRenderers` | {'int': 606} |
| `chromeTabs` | {'int': 606} |
| `chromeTabsProbedProfiles` | {'int': 606} |
| `chromeUtilityPssKb` | {'int': 606} |
| `desktopPssKb` | {'int': 606} |
| `hostPssKb` | {'int': 606} |
| `kind` | {'str': 606} |
| `memAvailableKb` | {'int': 606} |
| `memTotalKb` | {'int': 606} |
| `otherPssKb` | {'int': 606} |
| `processes` | {'int': 606} |
| `pssFallbackProcesses` | {'int': 606} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
