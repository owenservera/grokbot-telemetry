# sandbox_telemetry_parse — 2026-11-11 17:54:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1747589 lines=3870
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3861 |
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
| `chromeBrowserPssKb` | {'int': 3861} |
| `chromeGpuPssKb` | {'int': 3861} |
| `chromeOtherPssKb` | {'int': 3861} |
| `chromeProcesses` | {'int': 3861} |
| `chromeProfiles` | {'int': 3861} |
| `chromeRendererMaxPssKb` | {'int': 3861} |
| `chromeRendererPssKb` | {'int': 3861} |
| `chromeRenderers` | {'int': 3861} |
| `chromeTabs` | {'int': 3861} |
| `chromeTabsProbedProfiles` | {'int': 3861} |
| `chromeUtilityPssKb` | {'int': 3861} |
| `desktopPssKb` | {'int': 3861} |
| `hostPssKb` | {'int': 3861} |
| `kind` | {'str': 3861} |
| `memAvailableKb` | {'int': 3861} |
| `memTotalKb` | {'int': 3861} |
| `otherPssKb` | {'int': 3861} |
| `processes` | {'int': 3861} |
| `pssFallbackProcesses` | {'int': 3861} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
