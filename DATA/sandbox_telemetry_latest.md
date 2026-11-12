# sandbox_telemetry_parse — 2026-11-12 15:21:34 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2193853 lines=4856
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4847 |
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
| `chromeBrowserPssKb` | {'int': 4847} |
| `chromeGpuPssKb` | {'int': 4847} |
| `chromeOtherPssKb` | {'int': 4847} |
| `chromeProcesses` | {'int': 4847} |
| `chromeProfiles` | {'int': 4847} |
| `chromeRendererMaxPssKb` | {'int': 4847} |
| `chromeRendererPssKb` | {'int': 4847} |
| `chromeRenderers` | {'int': 4847} |
| `chromeTabs` | {'int': 4847} |
| `chromeTabsProbedProfiles` | {'int': 4847} |
| `chromeUtilityPssKb` | {'int': 4847} |
| `desktopPssKb` | {'int': 4847} |
| `hostPssKb` | {'int': 4847} |
| `kind` | {'str': 4847} |
| `memAvailableKb` | {'int': 4847} |
| `memTotalKb` | {'int': 4847} |
| `otherPssKb` | {'int': 4847} |
| `processes` | {'int': 4847} |
| `pssFallbackProcesses` | {'int': 4847} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
