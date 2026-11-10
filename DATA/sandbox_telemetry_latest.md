# sandbox_telemetry_parse — 2026-11-10 01:14:09 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=919068 lines=2039
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2030 |
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
| `chromeBrowserPssKb` | {'int': 2030} |
| `chromeGpuPssKb` | {'int': 2030} |
| `chromeOtherPssKb` | {'int': 2030} |
| `chromeProcesses` | {'int': 2030} |
| `chromeProfiles` | {'int': 2030} |
| `chromeRendererMaxPssKb` | {'int': 2030} |
| `chromeRendererPssKb` | {'int': 2030} |
| `chromeRenderers` | {'int': 2030} |
| `chromeTabs` | {'int': 2030} |
| `chromeTabsProbedProfiles` | {'int': 2030} |
| `chromeUtilityPssKb` | {'int': 2030} |
| `desktopPssKb` | {'int': 2030} |
| `hostPssKb` | {'int': 2030} |
| `kind` | {'str': 2030} |
| `memAvailableKb` | {'int': 2030} |
| `memTotalKb` | {'int': 2030} |
| `otherPssKb` | {'int': 2030} |
| `processes` | {'int': 2030} |
| `pssFallbackProcesses` | {'int': 2030} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
