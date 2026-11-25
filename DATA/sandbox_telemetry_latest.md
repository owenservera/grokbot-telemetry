# sandbox_telemetry_parse — 2026-11-25 20:37:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2914795 lines=6457
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6442 |
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
| `chromeBrowserPssKb` | {'int': 6442} |
| `chromeGpuPssKb` | {'int': 6442} |
| `chromeOtherPssKb` | {'int': 6442} |
| `chromeProcesses` | {'int': 6442} |
| `chromeProfiles` | {'int': 6442} |
| `chromeRendererMaxPssKb` | {'int': 6442} |
| `chromeRendererPssKb` | {'int': 6442} |
| `chromeRenderers` | {'int': 6442} |
| `chromeTabs` | {'int': 6442} |
| `chromeTabsProbedProfiles` | {'int': 6442} |
| `chromeUtilityPssKb` | {'int': 6442} |
| `desktopPssKb` | {'int': 6442} |
| `hostPssKb` | {'int': 6442} |
| `kind` | {'str': 6442} |
| `memAvailableKb` | {'int': 6442} |
| `memTotalKb` | {'int': 6442} |
| `otherPssKb` | {'int': 6442} |
| `processes` | {'int': 6442} |
| `pssFallbackProcesses` | {'int': 6442} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
