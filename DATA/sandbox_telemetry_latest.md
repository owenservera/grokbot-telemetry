# sandbox_telemetry_parse — 2026-11-25 09:14:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2688244 lines=5956
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5941 |
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
| `chromeBrowserPssKb` | {'int': 5941} |
| `chromeGpuPssKb` | {'int': 5941} |
| `chromeOtherPssKb` | {'int': 5941} |
| `chromeProcesses` | {'int': 5941} |
| `chromeProfiles` | {'int': 5941} |
| `chromeRendererMaxPssKb` | {'int': 5941} |
| `chromeRendererPssKb` | {'int': 5941} |
| `chromeRenderers` | {'int': 5941} |
| `chromeTabs` | {'int': 5941} |
| `chromeTabsProbedProfiles` | {'int': 5941} |
| `chromeUtilityPssKb` | {'int': 5941} |
| `desktopPssKb` | {'int': 5941} |
| `hostPssKb` | {'int': 5941} |
| `kind` | {'str': 5941} |
| `memAvailableKb` | {'int': 5941} |
| `memTotalKb` | {'int': 5941} |
| `otherPssKb` | {'int': 5941} |
| `processes` | {'int': 5941} |
| `pssFallbackProcesses` | {'int': 5941} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
