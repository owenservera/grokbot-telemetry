# sandbox_telemetry_parse — 2026-11-11 08:36:32 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1546667 lines=3426
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3417 |
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
| `chromeBrowserPssKb` | {'int': 3417} |
| `chromeGpuPssKb` | {'int': 3417} |
| `chromeOtherPssKb` | {'int': 3417} |
| `chromeProcesses` | {'int': 3417} |
| `chromeProfiles` | {'int': 3417} |
| `chromeRendererMaxPssKb` | {'int': 3417} |
| `chromeRendererPssKb` | {'int': 3417} |
| `chromeRenderers` | {'int': 3417} |
| `chromeTabs` | {'int': 3417} |
| `chromeTabsProbedProfiles` | {'int': 3417} |
| `chromeUtilityPssKb` | {'int': 3417} |
| `desktopPssKb` | {'int': 3417} |
| `hostPssKb` | {'int': 3417} |
| `kind` | {'str': 3417} |
| `memAvailableKb` | {'int': 3417} |
| `memTotalKb` | {'int': 3417} |
| `otherPssKb` | {'int': 3417} |
| `processes` | {'int': 3417} |
| `pssFallbackProcesses` | {'int': 3417} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
