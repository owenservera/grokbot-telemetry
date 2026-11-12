# sandbox_telemetry_parse — 2026-11-12 19:38:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2295778 lines=5081
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5072 |
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
| `chromeBrowserPssKb` | {'int': 5072} |
| `chromeGpuPssKb` | {'int': 5072} |
| `chromeOtherPssKb` | {'int': 5072} |
| `chromeProcesses` | {'int': 5072} |
| `chromeProfiles` | {'int': 5072} |
| `chromeRendererMaxPssKb` | {'int': 5072} |
| `chromeRendererPssKb` | {'int': 5072} |
| `chromeRenderers` | {'int': 5072} |
| `chromeTabs` | {'int': 5072} |
| `chromeTabsProbedProfiles` | {'int': 5072} |
| `chromeUtilityPssKb` | {'int': 5072} |
| `desktopPssKb` | {'int': 5072} |
| `hostPssKb` | {'int': 5072} |
| `kind` | {'str': 5072} |
| `memAvailableKb` | {'int': 5072} |
| `memTotalKb` | {'int': 5072} |
| `otherPssKb` | {'int': 5072} |
| `processes` | {'int': 5072} |
| `pssFallbackProcesses` | {'int': 5072} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
