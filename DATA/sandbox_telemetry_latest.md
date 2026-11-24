# sandbox_telemetry_parse — 2026-11-24 06:28:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2167133 lines=4804
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4789 |
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
| `chromeBrowserPssKb` | {'int': 4789} |
| `chromeGpuPssKb` | {'int': 4789} |
| `chromeOtherPssKb` | {'int': 4789} |
| `chromeProcesses` | {'int': 4789} |
| `chromeProfiles` | {'int': 4789} |
| `chromeRendererMaxPssKb` | {'int': 4789} |
| `chromeRendererPssKb` | {'int': 4789} |
| `chromeRenderers` | {'int': 4789} |
| `chromeTabs` | {'int': 4789} |
| `chromeTabsProbedProfiles` | {'int': 4789} |
| `chromeUtilityPssKb` | {'int': 4789} |
| `desktopPssKb` | {'int': 4789} |
| `hostPssKb` | {'int': 4789} |
| `kind` | {'str': 4789} |
| `memAvailableKb` | {'int': 4789} |
| `memTotalKb` | {'int': 4789} |
| `otherPssKb` | {'int': 4789} |
| `processes` | {'int': 4789} |
| `pssFallbackProcesses` | {'int': 4789} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
