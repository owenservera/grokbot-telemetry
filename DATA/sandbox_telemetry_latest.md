# sandbox_telemetry_parse — 2026-11-24 21:54:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2466213 lines=5465
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5450 |
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
| `chromeBrowserPssKb` | {'int': 5450} |
| `chromeGpuPssKb` | {'int': 5450} |
| `chromeOtherPssKb` | {'int': 5450} |
| `chromeProcesses` | {'int': 5450} |
| `chromeProfiles` | {'int': 5450} |
| `chromeRendererMaxPssKb` | {'int': 5450} |
| `chromeRendererPssKb` | {'int': 5450} |
| `chromeRenderers` | {'int': 5450} |
| `chromeTabs` | {'int': 5450} |
| `chromeTabsProbedProfiles` | {'int': 5450} |
| `chromeUtilityPssKb` | {'int': 5450} |
| `desktopPssKb` | {'int': 5450} |
| `hostPssKb` | {'int': 5450} |
| `kind` | {'str': 5450} |
| `memAvailableKb` | {'int': 5450} |
| `memTotalKb` | {'int': 5450} |
| `otherPssKb` | {'int': 5450} |
| `processes` | {'int': 5450} |
| `pssFallbackProcesses` | {'int': 5450} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
