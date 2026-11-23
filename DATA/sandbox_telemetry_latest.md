# sandbox_telemetry_parse — 2026-11-23 18:50:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1949533 lines=4323
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4308 |
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
| `chromeBrowserPssKb` | {'int': 4308} |
| `chromeGpuPssKb` | {'int': 4308} |
| `chromeOtherPssKb` | {'int': 4308} |
| `chromeProcesses` | {'int': 4308} |
| `chromeProfiles` | {'int': 4308} |
| `chromeRendererMaxPssKb` | {'int': 4308} |
| `chromeRendererPssKb` | {'int': 4308} |
| `chromeRenderers` | {'int': 4308} |
| `chromeTabs` | {'int': 4308} |
| `chromeTabsProbedProfiles` | {'int': 4308} |
| `chromeUtilityPssKb` | {'int': 4308} |
| `desktopPssKb` | {'int': 4308} |
| `hostPssKb` | {'int': 4308} |
| `kind` | {'str': 4308} |
| `memAvailableKb` | {'int': 4308} |
| `memTotalKb` | {'int': 4308} |
| `otherPssKb` | {'int': 4308} |
| `processes` | {'int': 4308} |
| `pssFallbackProcesses` | {'int': 4308} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
