# sandbox_telemetry_parse — 2026-11-12 07:16:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2020037 lines=4472
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4463 |
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
| `chromeBrowserPssKb` | {'int': 4463} |
| `chromeGpuPssKb` | {'int': 4463} |
| `chromeOtherPssKb` | {'int': 4463} |
| `chromeProcesses` | {'int': 4463} |
| `chromeProfiles` | {'int': 4463} |
| `chromeRendererMaxPssKb` | {'int': 4463} |
| `chromeRendererPssKb` | {'int': 4463} |
| `chromeRenderers` | {'int': 4463} |
| `chromeTabs` | {'int': 4463} |
| `chromeTabsProbedProfiles` | {'int': 4463} |
| `chromeUtilityPssKb` | {'int': 4463} |
| `desktopPssKb` | {'int': 4463} |
| `hostPssKb` | {'int': 4463} |
| `kind` | {'str': 4463} |
| `memAvailableKb` | {'int': 4463} |
| `memTotalKb` | {'int': 4463} |
| `otherPssKb` | {'int': 4463} |
| `processes` | {'int': 4463} |
| `pssFallbackProcesses` | {'int': 4463} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
