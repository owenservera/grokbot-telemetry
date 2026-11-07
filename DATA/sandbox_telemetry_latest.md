# sandbox_telemetry_parse — 2026-11-07 15:13:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=513629 lines=1143
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1134 |
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
| `chromeBrowserPssKb` | {'int': 1134} |
| `chromeGpuPssKb` | {'int': 1134} |
| `chromeOtherPssKb` | {'int': 1134} |
| `chromeProcesses` | {'int': 1134} |
| `chromeProfiles` | {'int': 1134} |
| `chromeRendererMaxPssKb` | {'int': 1134} |
| `chromeRendererPssKb` | {'int': 1134} |
| `chromeRenderers` | {'int': 1134} |
| `chromeTabs` | {'int': 1134} |
| `chromeTabsProbedProfiles` | {'int': 1134} |
| `chromeUtilityPssKb` | {'int': 1134} |
| `desktopPssKb` | {'int': 1134} |
| `hostPssKb` | {'int': 1134} |
| `kind` | {'str': 1134} |
| `memAvailableKb` | {'int': 1134} |
| `memTotalKb` | {'int': 1134} |
| `otherPssKb` | {'int': 1134} |
| `processes` | {'int': 1134} |
| `pssFallbackProcesses` | {'int': 1134} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
