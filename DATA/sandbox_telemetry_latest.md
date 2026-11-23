# sandbox_telemetry_parse — 2026-11-23 15:14:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1887527 lines=4186
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4171 |
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
| `chromeBrowserPssKb` | {'int': 4171} |
| `chromeGpuPssKb` | {'int': 4171} |
| `chromeOtherPssKb` | {'int': 4171} |
| `chromeProcesses` | {'int': 4171} |
| `chromeProfiles` | {'int': 4171} |
| `chromeRendererMaxPssKb` | {'int': 4171} |
| `chromeRendererPssKb` | {'int': 4171} |
| `chromeRenderers` | {'int': 4171} |
| `chromeTabs` | {'int': 4171} |
| `chromeTabsProbedProfiles` | {'int': 4171} |
| `chromeUtilityPssKb` | {'int': 4171} |
| `desktopPssKb` | {'int': 4171} |
| `hostPssKb` | {'int': 4171} |
| `kind` | {'str': 4171} |
| `memAvailableKb` | {'int': 4171} |
| `memTotalKb` | {'int': 4171} |
| `otherPssKb` | {'int': 4171} |
| `processes` | {'int': 4171} |
| `pssFallbackProcesses` | {'int': 4171} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
