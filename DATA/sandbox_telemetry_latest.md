# sandbox_telemetry_parse — 2026-11-25 03:36:30 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2574725 lines=5705
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5690 |
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
| `chromeBrowserPssKb` | {'int': 5690} |
| `chromeGpuPssKb` | {'int': 5690} |
| `chromeOtherPssKb` | {'int': 5690} |
| `chromeProcesses` | {'int': 5690} |
| `chromeProfiles` | {'int': 5690} |
| `chromeRendererMaxPssKb` | {'int': 5690} |
| `chromeRendererPssKb` | {'int': 5690} |
| `chromeRenderers` | {'int': 5690} |
| `chromeTabs` | {'int': 5690} |
| `chromeTabsProbedProfiles` | {'int': 5690} |
| `chromeUtilityPssKb` | {'int': 5690} |
| `desktopPssKb` | {'int': 5690} |
| `hostPssKb` | {'int': 5690} |
| `kind` | {'str': 5690} |
| `memAvailableKb` | {'int': 5690} |
| `memTotalKb` | {'int': 5690} |
| `otherPssKb` | {'int': 5690} |
| `processes` | {'int': 5690} |
| `pssFallbackProcesses` | {'int': 5690} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
