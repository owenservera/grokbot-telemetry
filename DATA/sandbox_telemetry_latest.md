# sandbox_telemetry_parse — 2026-11-25 22:02:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2941931 lines=6517
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6502 |
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
| `chromeBrowserPssKb` | {'int': 6502} |
| `chromeGpuPssKb` | {'int': 6502} |
| `chromeOtherPssKb` | {'int': 6502} |
| `chromeProcesses` | {'int': 6502} |
| `chromeProfiles` | {'int': 6502} |
| `chromeRendererMaxPssKb` | {'int': 6502} |
| `chromeRendererPssKb` | {'int': 6502} |
| `chromeRenderers` | {'int': 6502} |
| `chromeTabs` | {'int': 6502} |
| `chromeTabsProbedProfiles` | {'int': 6502} |
| `chromeUtilityPssKb` | {'int': 6502} |
| `desktopPssKb` | {'int': 6502} |
| `hostPssKb` | {'int': 6502} |
| `kind` | {'str': 6502} |
| `memAvailableKb` | {'int': 6502} |
| `memTotalKb` | {'int': 6502} |
| `otherPssKb` | {'int': 6502} |
| `processes` | {'int': 6502} |
| `pssFallbackProcesses` | {'int': 6502} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
