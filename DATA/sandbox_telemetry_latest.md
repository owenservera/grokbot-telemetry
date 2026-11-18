# sandbox_telemetry_parse — 2026-11-18 03:41:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=662074 lines=1470
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1463 |
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
| `chromeBrowserPssKb` | {'int': 1463} |
| `chromeGpuPssKb` | {'int': 1463} |
| `chromeOtherPssKb` | {'int': 1463} |
| `chromeProcesses` | {'int': 1463} |
| `chromeProfiles` | {'int': 1463} |
| `chromeRendererMaxPssKb` | {'int': 1463} |
| `chromeRendererPssKb` | {'int': 1463} |
| `chromeRenderers` | {'int': 1463} |
| `chromeTabs` | {'int': 1463} |
| `chromeTabsProbedProfiles` | {'int': 1463} |
| `chromeUtilityPssKb` | {'int': 1463} |
| `desktopPssKb` | {'int': 1463} |
| `hostPssKb` | {'int': 1463} |
| `kind` | {'str': 1463} |
| `memAvailableKb` | {'int': 1463} |
| `memTotalKb` | {'int': 1463} |
| `otherPssKb` | {'int': 1463} |
| `processes` | {'int': 1463} |
| `pssFallbackProcesses` | {'int': 1463} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
