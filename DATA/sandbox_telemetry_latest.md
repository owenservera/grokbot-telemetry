# sandbox_telemetry_parse — 2026-11-11 23:44:23 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1873877 lines=4149
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4140 |
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
| `chromeBrowserPssKb` | {'int': 4140} |
| `chromeGpuPssKb` | {'int': 4140} |
| `chromeOtherPssKb` | {'int': 4140} |
| `chromeProcesses` | {'int': 4140} |
| `chromeProfiles` | {'int': 4140} |
| `chromeRendererMaxPssKb` | {'int': 4140} |
| `chromeRendererPssKb` | {'int': 4140} |
| `chromeRenderers` | {'int': 4140} |
| `chromeTabs` | {'int': 4140} |
| `chromeTabsProbedProfiles` | {'int': 4140} |
| `chromeUtilityPssKb` | {'int': 4140} |
| `desktopPssKb` | {'int': 4140} |
| `hostPssKb` | {'int': 4140} |
| `kind` | {'str': 4140} |
| `memAvailableKb` | {'int': 4140} |
| `memTotalKb` | {'int': 4140} |
| `otherPssKb` | {'int': 4140} |
| `processes` | {'int': 4140} |
| `pssFallbackProcesses` | {'int': 4140} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
