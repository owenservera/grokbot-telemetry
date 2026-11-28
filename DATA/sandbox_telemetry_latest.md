# sandbox_telemetry_parse — 2026-11-28 11:31:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=867921 lines=1925
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1917 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 1917} |
| `chromeGpuPssKb` | {'int': 1917} |
| `chromeOtherPssKb` | {'int': 1917} |
| `chromeProcesses` | {'int': 1917} |
| `chromeProfiles` | {'int': 1917} |
| `chromeRendererMaxPssKb` | {'int': 1917} |
| `chromeRendererPssKb` | {'int': 1917} |
| `chromeRenderers` | {'int': 1917} |
| `chromeTabs` | {'int': 1917} |
| `chromeTabsProbedProfiles` | {'int': 1917} |
| `chromeUtilityPssKb` | {'int': 1917} |
| `desktopPssKb` | {'int': 1917} |
| `hostPssKb` | {'int': 1917} |
| `kind` | {'str': 1917} |
| `memAvailableKb` | {'int': 1917} |
| `memTotalKb` | {'int': 1917} |
| `otherPssKb` | {'int': 1917} |
| `processes` | {'int': 1917} |
| `pssFallbackProcesses` | {'int': 1917} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
