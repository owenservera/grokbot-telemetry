# sandbox_telemetry_parse — 2026-11-19 14:50:55 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1319829 lines=2926
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2917 |
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
| `chromeBrowserPssKb` | {'int': 2917} |
| `chromeGpuPssKb` | {'int': 2917} |
| `chromeOtherPssKb` | {'int': 2917} |
| `chromeProcesses` | {'int': 2917} |
| `chromeProfiles` | {'int': 2917} |
| `chromeRendererMaxPssKb` | {'int': 2917} |
| `chromeRendererPssKb` | {'int': 2917} |
| `chromeRenderers` | {'int': 2917} |
| `chromeTabs` | {'int': 2917} |
| `chromeTabsProbedProfiles` | {'int': 2917} |
| `chromeUtilityPssKb` | {'int': 2917} |
| `desktopPssKb` | {'int': 2917} |
| `hostPssKb` | {'int': 2917} |
| `kind` | {'str': 2917} |
| `memAvailableKb` | {'int': 2917} |
| `memTotalKb` | {'int': 2917} |
| `otherPssKb` | {'int': 2917} |
| `processes` | {'int': 2917} |
| `pssFallbackProcesses` | {'int': 2917} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
