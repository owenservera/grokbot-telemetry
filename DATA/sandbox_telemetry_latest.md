# sandbox_telemetry_parse — 2026-11-25 00:28:26 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2517310 lines=5578
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5563 |
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
| `chromeBrowserPssKb` | {'int': 5563} |
| `chromeGpuPssKb` | {'int': 5563} |
| `chromeOtherPssKb` | {'int': 5563} |
| `chromeProcesses` | {'int': 5563} |
| `chromeProfiles` | {'int': 5563} |
| `chromeRendererMaxPssKb` | {'int': 5563} |
| `chromeRendererPssKb` | {'int': 5563} |
| `chromeRenderers` | {'int': 5563} |
| `chromeTabs` | {'int': 5563} |
| `chromeTabsProbedProfiles` | {'int': 5563} |
| `chromeUtilityPssKb` | {'int': 5563} |
| `desktopPssKb` | {'int': 5563} |
| `hostPssKb` | {'int': 5563} |
| `kind` | {'str': 5563} |
| `memAvailableKb` | {'int': 5563} |
| `memTotalKb` | {'int': 5563} |
| `otherPssKb` | {'int': 5563} |
| `processes` | {'int': 5563} |
| `pssFallbackProcesses` | {'int': 5563} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
