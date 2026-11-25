# sandbox_telemetry_parse — 2026-11-25 08:33:36 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2674219 lines=5925
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5910 |
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
| `chromeBrowserPssKb` | {'int': 5910} |
| `chromeGpuPssKb` | {'int': 5910} |
| `chromeOtherPssKb` | {'int': 5910} |
| `chromeProcesses` | {'int': 5910} |
| `chromeProfiles` | {'int': 5910} |
| `chromeRendererMaxPssKb` | {'int': 5910} |
| `chromeRendererPssKb` | {'int': 5910} |
| `chromeRenderers` | {'int': 5910} |
| `chromeTabs` | {'int': 5910} |
| `chromeTabsProbedProfiles` | {'int': 5910} |
| `chromeUtilityPssKb` | {'int': 5910} |
| `desktopPssKb` | {'int': 5910} |
| `hostPssKb` | {'int': 5910} |
| `kind` | {'str': 5910} |
| `memAvailableKb` | {'int': 5910} |
| `memTotalKb` | {'int': 5910} |
| `otherPssKb` | {'int': 5910} |
| `processes` | {'int': 5910} |
| `pssFallbackProcesses` | {'int': 5910} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
