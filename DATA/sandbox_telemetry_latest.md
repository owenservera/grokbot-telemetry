# sandbox_telemetry_parse — 2026-11-12 20:53:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2323855 lines=5143
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5134 |
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
| `chromeBrowserPssKb` | {'int': 5134} |
| `chromeGpuPssKb` | {'int': 5134} |
| `chromeOtherPssKb` | {'int': 5134} |
| `chromeProcesses` | {'int': 5134} |
| `chromeProfiles` | {'int': 5134} |
| `chromeRendererMaxPssKb` | {'int': 5134} |
| `chromeRendererPssKb` | {'int': 5134} |
| `chromeRenderers` | {'int': 5134} |
| `chromeTabs` | {'int': 5134} |
| `chromeTabsProbedProfiles` | {'int': 5134} |
| `chromeUtilityPssKb` | {'int': 5134} |
| `desktopPssKb` | {'int': 5134} |
| `hostPssKb` | {'int': 5134} |
| `kind` | {'str': 5134} |
| `memAvailableKb` | {'int': 5134} |
| `memTotalKb` | {'int': 5134} |
| `otherPssKb` | {'int': 5134} |
| `processes` | {'int': 5134} |
| `pssFallbackProcesses` | {'int': 5134} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
