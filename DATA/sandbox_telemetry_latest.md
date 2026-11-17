# sandbox_telemetry_parse — 2026-11-17 03:51:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=233900 lines=523
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 516 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `chromeBrowserPssKb` | {'int': 516} |
| `chromeGpuPssKb` | {'int': 516} |
| `chromeOtherPssKb` | {'int': 516} |
| `chromeProcesses` | {'int': 516} |
| `chromeProfiles` | {'int': 516} |
| `chromeRendererMaxPssKb` | {'int': 516} |
| `chromeRendererPssKb` | {'int': 516} |
| `chromeRenderers` | {'int': 516} |
| `chromeTabs` | {'int': 516} |
| `chromeTabsProbedProfiles` | {'int': 516} |
| `chromeUtilityPssKb` | {'int': 516} |
| `desktopPssKb` | {'int': 516} |
| `hostPssKb` | {'int': 516} |
| `kind` | {'str': 516} |
| `memAvailableKb` | {'int': 516} |
| `memTotalKb` | {'int': 516} |
| `otherPssKb` | {'int': 516} |
| `processes` | {'int': 516} |
| `pssFallbackProcesses` | {'int': 516} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
