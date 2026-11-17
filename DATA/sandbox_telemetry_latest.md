# sandbox_telemetry_parse — 2026-11-17 12:52:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=393946 lines=877
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 870 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 870} |
| `chromeGpuPssKb` | {'int': 870} |
| `chromeOtherPssKb` | {'int': 870} |
| `chromeProcesses` | {'int': 870} |
| `chromeProfiles` | {'int': 870} |
| `chromeRendererMaxPssKb` | {'int': 870} |
| `chromeRendererPssKb` | {'int': 870} |
| `chromeRenderers` | {'int': 870} |
| `chromeTabs` | {'int': 870} |
| `chromeTabsProbedProfiles` | {'int': 870} |
| `chromeUtilityPssKb` | {'int': 870} |
| `desktopPssKb` | {'int': 870} |
| `hostPssKb` | {'int': 870} |
| `kind` | {'str': 870} |
| `memAvailableKb` | {'int': 870} |
| `memTotalKb` | {'int': 870} |
| `otherPssKb` | {'int': 870} |
| `processes` | {'int': 870} |
| `pssFallbackProcesses` | {'int': 870} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
