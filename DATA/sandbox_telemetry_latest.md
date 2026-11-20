# sandbox_telemetry_parse — 2026-11-20 08:38:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1641580 lines=3639
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3628 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3628} |
| `chromeGpuPssKb` | {'int': 3628} |
| `chromeOtherPssKb` | {'int': 3628} |
| `chromeProcesses` | {'int': 3628} |
| `chromeProfiles` | {'int': 3628} |
| `chromeRendererMaxPssKb` | {'int': 3628} |
| `chromeRendererPssKb` | {'int': 3628} |
| `chromeRenderers` | {'int': 3628} |
| `chromeTabs` | {'int': 3628} |
| `chromeTabsProbedProfiles` | {'int': 3628} |
| `chromeUtilityPssKb` | {'int': 3628} |
| `desktopPssKb` | {'int': 3628} |
| `hostPssKb` | {'int': 3628} |
| `kind` | {'str': 3628} |
| `memAvailableKb` | {'int': 3628} |
| `memTotalKb` | {'int': 3628} |
| `otherPssKb` | {'int': 3628} |
| `processes` | {'int': 3628} |
| `pssFallbackProcesses` | {'int': 3628} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
