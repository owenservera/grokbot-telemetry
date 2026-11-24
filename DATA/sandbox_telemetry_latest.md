# sandbox_telemetry_parse — 2026-11-24 10:30:26 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2244908 lines=4976
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4961 |
| `egress_tunnel` | 11 |
| `boot_stage` | 3 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 4961} |
| `chromeGpuPssKb` | {'int': 4961} |
| `chromeOtherPssKb` | {'int': 4961} |
| `chromeProcesses` | {'int': 4961} |
| `chromeProfiles` | {'int': 4961} |
| `chromeRendererMaxPssKb` | {'int': 4961} |
| `chromeRendererPssKb` | {'int': 4961} |
| `chromeRenderers` | {'int': 4961} |
| `chromeTabs` | {'int': 4961} |
| `chromeTabsProbedProfiles` | {'int': 4961} |
| `chromeUtilityPssKb` | {'int': 4961} |
| `desktopPssKb` | {'int': 4961} |
| `hostPssKb` | {'int': 4961} |
| `kind` | {'str': 4961} |
| `memAvailableKb` | {'int': 4961} |
| `memTotalKb` | {'int': 4961} |
| `otherPssKb` | {'int': 4961} |
| `processes` | {'int': 4961} |
| `pssFallbackProcesses` | {'int': 4961} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
