# sandbox_telemetry_parse — 2026-11-11 21:40:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1830431 lines=4053
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4044 |
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
| `chromeBrowserPssKb` | {'int': 4044} |
| `chromeGpuPssKb` | {'int': 4044} |
| `chromeOtherPssKb` | {'int': 4044} |
| `chromeProcesses` | {'int': 4044} |
| `chromeProfiles` | {'int': 4044} |
| `chromeRendererMaxPssKb` | {'int': 4044} |
| `chromeRendererPssKb` | {'int': 4044} |
| `chromeRenderers` | {'int': 4044} |
| `chromeTabs` | {'int': 4044} |
| `chromeTabsProbedProfiles` | {'int': 4044} |
| `chromeUtilityPssKb` | {'int': 4044} |
| `desktopPssKb` | {'int': 4044} |
| `hostPssKb` | {'int': 4044} |
| `kind` | {'str': 4044} |
| `memAvailableKb` | {'int': 4044} |
| `memTotalKb` | {'int': 4044} |
| `otherPssKb` | {'int': 4044} |
| `processes` | {'int': 4044} |
| `pssFallbackProcesses` | {'int': 4044} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
