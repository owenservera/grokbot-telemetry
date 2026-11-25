# sandbox_telemetry_parse — 2026-11-25 02:32:30 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2554834 lines=5661
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5646 |
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
| `chromeBrowserPssKb` | {'int': 5646} |
| `chromeGpuPssKb` | {'int': 5646} |
| `chromeOtherPssKb` | {'int': 5646} |
| `chromeProcesses` | {'int': 5646} |
| `chromeProfiles` | {'int': 5646} |
| `chromeRendererMaxPssKb` | {'int': 5646} |
| `chromeRendererPssKb` | {'int': 5646} |
| `chromeRenderers` | {'int': 5646} |
| `chromeTabs` | {'int': 5646} |
| `chromeTabsProbedProfiles` | {'int': 5646} |
| `chromeUtilityPssKb` | {'int': 5646} |
| `desktopPssKb` | {'int': 5646} |
| `hostPssKb` | {'int': 5646} |
| `kind` | {'str': 5646} |
| `memAvailableKb` | {'int': 5646} |
| `memTotalKb` | {'int': 5646} |
| `otherPssKb` | {'int': 5646} |
| `processes` | {'int': 5646} |
| `pssFallbackProcesses` | {'int': 5646} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
