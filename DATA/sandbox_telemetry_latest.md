# sandbox_telemetry_parse — 2026-11-11 14:07:33 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1664778 lines=3687
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3678 |
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
| `chromeBrowserPssKb` | {'int': 3678} |
| `chromeGpuPssKb` | {'int': 3678} |
| `chromeOtherPssKb` | {'int': 3678} |
| `chromeProcesses` | {'int': 3678} |
| `chromeProfiles` | {'int': 3678} |
| `chromeRendererMaxPssKb` | {'int': 3678} |
| `chromeRendererPssKb` | {'int': 3678} |
| `chromeRenderers` | {'int': 3678} |
| `chromeTabs` | {'int': 3678} |
| `chromeTabsProbedProfiles` | {'int': 3678} |
| `chromeUtilityPssKb` | {'int': 3678} |
| `desktopPssKb` | {'int': 3678} |
| `hostPssKb` | {'int': 3678} |
| `kind` | {'str': 3678} |
| `memAvailableKb` | {'int': 3678} |
| `memTotalKb` | {'int': 3678} |
| `otherPssKb` | {'int': 3678} |
| `processes` | {'int': 3678} |
| `pssFallbackProcesses` | {'int': 3678} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
