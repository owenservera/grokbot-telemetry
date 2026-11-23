# sandbox_telemetry_parse — 2026-11-23 14:31:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1874390 lines=4157
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4142 |
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
| `chromeBrowserPssKb` | {'int': 4142} |
| `chromeGpuPssKb` | {'int': 4142} |
| `chromeOtherPssKb` | {'int': 4142} |
| `chromeProcesses` | {'int': 4142} |
| `chromeProfiles` | {'int': 4142} |
| `chromeRendererMaxPssKb` | {'int': 4142} |
| `chromeRendererPssKb` | {'int': 4142} |
| `chromeRenderers` | {'int': 4142} |
| `chromeTabs` | {'int': 4142} |
| `chromeTabsProbedProfiles` | {'int': 4142} |
| `chromeUtilityPssKb` | {'int': 4142} |
| `desktopPssKb` | {'int': 4142} |
| `hostPssKb` | {'int': 4142} |
| `kind` | {'str': 4142} |
| `memAvailableKb` | {'int': 4142} |
| `memTotalKb` | {'int': 4142} |
| `otherPssKb` | {'int': 4142} |
| `processes` | {'int': 4142} |
| `pssFallbackProcesses` | {'int': 4142} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
