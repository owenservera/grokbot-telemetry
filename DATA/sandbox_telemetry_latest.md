# sandbox_telemetry_parse — 2026-11-26 01:33:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3012029 lines=6672
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6657 |
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
| `chromeBrowserPssKb` | {'int': 6657} |
| `chromeGpuPssKb` | {'int': 6657} |
| `chromeOtherPssKb` | {'int': 6657} |
| `chromeProcesses` | {'int': 6657} |
| `chromeProfiles` | {'int': 6657} |
| `chromeRendererMaxPssKb` | {'int': 6657} |
| `chromeRendererPssKb` | {'int': 6657} |
| `chromeRenderers` | {'int': 6657} |
| `chromeTabs` | {'int': 6657} |
| `chromeTabsProbedProfiles` | {'int': 6657} |
| `chromeUtilityPssKb` | {'int': 6657} |
| `desktopPssKb` | {'int': 6657} |
| `hostPssKb` | {'int': 6657} |
| `kind` | {'str': 6657} |
| `memAvailableKb` | {'int': 6657} |
| `memTotalKb` | {'int': 6657} |
| `otherPssKb` | {'int': 6657} |
| `processes` | {'int': 6657} |
| `pssFallbackProcesses` | {'int': 6657} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
