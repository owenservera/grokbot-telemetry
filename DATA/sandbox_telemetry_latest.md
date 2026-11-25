# sandbox_telemetry_parse — 2026-11-25 21:44:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2935151 lines=6502
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6487 |
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
| `chromeBrowserPssKb` | {'int': 6487} |
| `chromeGpuPssKb` | {'int': 6487} |
| `chromeOtherPssKb` | {'int': 6487} |
| `chromeProcesses` | {'int': 6487} |
| `chromeProfiles` | {'int': 6487} |
| `chromeRendererMaxPssKb` | {'int': 6487} |
| `chromeRendererPssKb` | {'int': 6487} |
| `chromeRenderers` | {'int': 6487} |
| `chromeTabs` | {'int': 6487} |
| `chromeTabsProbedProfiles` | {'int': 6487} |
| `chromeUtilityPssKb` | {'int': 6487} |
| `desktopPssKb` | {'int': 6487} |
| `hostPssKb` | {'int': 6487} |
| `kind` | {'str': 6487} |
| `memAvailableKb` | {'int': 6487} |
| `memTotalKb` | {'int': 6487} |
| `otherPssKb` | {'int': 6487} |
| `processes` | {'int': 6487} |
| `pssFallbackProcesses` | {'int': 6487} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
