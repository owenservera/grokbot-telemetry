# sandbox_telemetry_parse — 2026-11-12 10:54:54 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2094707 lines=4637
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4628 |
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
| `chromeBrowserPssKb` | {'int': 4628} |
| `chromeGpuPssKb` | {'int': 4628} |
| `chromeOtherPssKb` | {'int': 4628} |
| `chromeProcesses` | {'int': 4628} |
| `chromeProfiles` | {'int': 4628} |
| `chromeRendererMaxPssKb` | {'int': 4628} |
| `chromeRendererPssKb` | {'int': 4628} |
| `chromeRenderers` | {'int': 4628} |
| `chromeTabs` | {'int': 4628} |
| `chromeTabsProbedProfiles` | {'int': 4628} |
| `chromeUtilityPssKb` | {'int': 4628} |
| `desktopPssKb` | {'int': 4628} |
| `hostPssKb` | {'int': 4628} |
| `kind` | {'str': 4628} |
| `memAvailableKb` | {'int': 4628} |
| `memTotalKb` | {'int': 4628} |
| `otherPssKb` | {'int': 4628} |
| `processes` | {'int': 4628} |
| `pssFallbackProcesses` | {'int': 4628} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
