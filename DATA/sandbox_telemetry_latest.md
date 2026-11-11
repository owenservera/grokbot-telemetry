# sandbox_telemetry_parse — 2026-11-11 09:24:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1561594 lines=3459
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3450 |
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
| `chromeBrowserPssKb` | {'int': 3450} |
| `chromeGpuPssKb` | {'int': 3450} |
| `chromeOtherPssKb` | {'int': 3450} |
| `chromeProcesses` | {'int': 3450} |
| `chromeProfiles` | {'int': 3450} |
| `chromeRendererMaxPssKb` | {'int': 3450} |
| `chromeRendererPssKb` | {'int': 3450} |
| `chromeRenderers` | {'int': 3450} |
| `chromeTabs` | {'int': 3450} |
| `chromeTabsProbedProfiles` | {'int': 3450} |
| `chromeUtilityPssKb` | {'int': 3450} |
| `desktopPssKb` | {'int': 3450} |
| `hostPssKb` | {'int': 3450} |
| `kind` | {'str': 3450} |
| `memAvailableKb` | {'int': 3450} |
| `memTotalKb` | {'int': 3450} |
| `otherPssKb` | {'int': 3450} |
| `processes` | {'int': 3450} |
| `pssFallbackProcesses` | {'int': 3450} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
