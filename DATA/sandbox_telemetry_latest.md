# sandbox_telemetry_parse — 2026-11-12 19:10:05 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2284906 lines=5057
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5048 |
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
| `chromeBrowserPssKb` | {'int': 5048} |
| `chromeGpuPssKb` | {'int': 5048} |
| `chromeOtherPssKb` | {'int': 5048} |
| `chromeProcesses` | {'int': 5048} |
| `chromeProfiles` | {'int': 5048} |
| `chromeRendererMaxPssKb` | {'int': 5048} |
| `chromeRendererPssKb` | {'int': 5048} |
| `chromeRenderers` | {'int': 5048} |
| `chromeTabs` | {'int': 5048} |
| `chromeTabsProbedProfiles` | {'int': 5048} |
| `chromeUtilityPssKb` | {'int': 5048} |
| `desktopPssKb` | {'int': 5048} |
| `hostPssKb` | {'int': 5048} |
| `kind` | {'str': 5048} |
| `memAvailableKb` | {'int': 5048} |
| `memTotalKb` | {'int': 5048} |
| `otherPssKb` | {'int': 5048} |
| `processes` | {'int': 5048} |
| `pssFallbackProcesses` | {'int': 5048} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
