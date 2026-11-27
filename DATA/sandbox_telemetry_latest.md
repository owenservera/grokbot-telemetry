# sandbox_telemetry_parse — 2026-11-27 13:44:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=441633 lines=983
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 975 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

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
| `chromeBrowserPssKb` | {'int': 975} |
| `chromeGpuPssKb` | {'int': 975} |
| `chromeOtherPssKb` | {'int': 975} |
| `chromeProcesses` | {'int': 975} |
| `chromeProfiles` | {'int': 975} |
| `chromeRendererMaxPssKb` | {'int': 975} |
| `chromeRendererPssKb` | {'int': 975} |
| `chromeRenderers` | {'int': 975} |
| `chromeTabs` | {'int': 975} |
| `chromeTabsProbedProfiles` | {'int': 975} |
| `chromeUtilityPssKb` | {'int': 975} |
| `desktopPssKb` | {'int': 975} |
| `hostPssKb` | {'int': 975} |
| `kind` | {'str': 975} |
| `memAvailableKb` | {'int': 975} |
| `memTotalKb` | {'int': 975} |
| `otherPssKb` | {'int': 975} |
| `processes` | {'int': 975} |
| `pssFallbackProcesses` | {'int': 975} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
