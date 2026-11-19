# sandbox_telemetry_parse — 2026-11-19 09:09:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1198596 lines=2658
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2649 |
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
| `chromeBrowserPssKb` | {'int': 2649} |
| `chromeGpuPssKb` | {'int': 2649} |
| `chromeOtherPssKb` | {'int': 2649} |
| `chromeProcesses` | {'int': 2649} |
| `chromeProfiles` | {'int': 2649} |
| `chromeRendererMaxPssKb` | {'int': 2649} |
| `chromeRendererPssKb` | {'int': 2649} |
| `chromeRenderers` | {'int': 2649} |
| `chromeTabs` | {'int': 2649} |
| `chromeTabsProbedProfiles` | {'int': 2649} |
| `chromeUtilityPssKb` | {'int': 2649} |
| `desktopPssKb` | {'int': 2649} |
| `hostPssKb` | {'int': 2649} |
| `kind` | {'str': 2649} |
| `memAvailableKb` | {'int': 2649} |
| `memTotalKb` | {'int': 2649} |
| `otherPssKb` | {'int': 2649} |
| `processes` | {'int': 2649} |
| `pssFallbackProcesses` | {'int': 2649} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
