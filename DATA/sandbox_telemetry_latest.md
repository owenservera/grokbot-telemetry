# sandbox_telemetry_parse — 2026-11-11 23:43:23 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1873425 lines=4147
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4138 |
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
| `chromeBrowserPssKb` | {'int': 4138} |
| `chromeGpuPssKb` | {'int': 4138} |
| `chromeOtherPssKb` | {'int': 4138} |
| `chromeProcesses` | {'int': 4138} |
| `chromeProfiles` | {'int': 4138} |
| `chromeRendererMaxPssKb` | {'int': 4138} |
| `chromeRendererPssKb` | {'int': 4138} |
| `chromeRenderers` | {'int': 4138} |
| `chromeTabs` | {'int': 4138} |
| `chromeTabsProbedProfiles` | {'int': 4138} |
| `chromeUtilityPssKb` | {'int': 4138} |
| `desktopPssKb` | {'int': 4138} |
| `hostPssKb` | {'int': 4138} |
| `kind` | {'str': 4138} |
| `memAvailableKb` | {'int': 4138} |
| `memTotalKb` | {'int': 4138} |
| `otherPssKb` | {'int': 4138} |
| `processes` | {'int': 4138} |
| `pssFallbackProcesses` | {'int': 4138} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
