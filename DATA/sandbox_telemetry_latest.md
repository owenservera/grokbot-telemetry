# sandbox_telemetry_parse — 2026-11-11 07:00:26 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1516820 lines=3360
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3351 |
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
| `chromeBrowserPssKb` | {'int': 3351} |
| `chromeGpuPssKb` | {'int': 3351} |
| `chromeOtherPssKb` | {'int': 3351} |
| `chromeProcesses` | {'int': 3351} |
| `chromeProfiles` | {'int': 3351} |
| `chromeRendererMaxPssKb` | {'int': 3351} |
| `chromeRendererPssKb` | {'int': 3351} |
| `chromeRenderers` | {'int': 3351} |
| `chromeTabs` | {'int': 3351} |
| `chromeTabsProbedProfiles` | {'int': 3351} |
| `chromeUtilityPssKb` | {'int': 3351} |
| `desktopPssKb` | {'int': 3351} |
| `hostPssKb` | {'int': 3351} |
| `kind` | {'str': 3351} |
| `memAvailableKb` | {'int': 3351} |
| `memTotalKb` | {'int': 3351} |
| `otherPssKb` | {'int': 3351} |
| `processes` | {'int': 3351} |
| `pssFallbackProcesses` | {'int': 3351} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
