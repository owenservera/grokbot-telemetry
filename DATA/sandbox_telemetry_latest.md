# sandbox_telemetry_parse — 2026-11-10 14:11:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1175198 lines=2605
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2596 |
| `egress_tunnel` | 5 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 2596} |
| `chromeGpuPssKb` | {'int': 2596} |
| `chromeOtherPssKb` | {'int': 2596} |
| `chromeProcesses` | {'int': 2596} |
| `chromeProfiles` | {'int': 2596} |
| `chromeRendererMaxPssKb` | {'int': 2596} |
| `chromeRendererPssKb` | {'int': 2596} |
| `chromeRenderers` | {'int': 2596} |
| `chromeTabs` | {'int': 2596} |
| `chromeTabsProbedProfiles` | {'int': 2596} |
| `chromeUtilityPssKb` | {'int': 2596} |
| `desktopPssKb` | {'int': 2596} |
| `hostPssKb` | {'int': 2596} |
| `kind` | {'str': 2596} |
| `memAvailableKb` | {'int': 2596} |
| `memTotalKb` | {'int': 2596} |
| `otherPssKb` | {'int': 2596} |
| `processes` | {'int': 2596} |
| `pssFallbackProcesses` | {'int': 2596} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
