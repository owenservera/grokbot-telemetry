# sandbox_telemetry_parse — 2026-11-27 23:34:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=637630 lines=1416
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1408 |
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
| `chromeBrowserPssKb` | {'int': 1408} |
| `chromeGpuPssKb` | {'int': 1408} |
| `chromeOtherPssKb` | {'int': 1408} |
| `chromeProcesses` | {'int': 1408} |
| `chromeProfiles` | {'int': 1408} |
| `chromeRendererMaxPssKb` | {'int': 1408} |
| `chromeRendererPssKb` | {'int': 1408} |
| `chromeRenderers` | {'int': 1408} |
| `chromeTabs` | {'int': 1408} |
| `chromeTabsProbedProfiles` | {'int': 1408} |
| `chromeUtilityPssKb` | {'int': 1408} |
| `desktopPssKb` | {'int': 1408} |
| `hostPssKb` | {'int': 1408} |
| `kind` | {'str': 1408} |
| `memAvailableKb` | {'int': 1408} |
| `memTotalKb` | {'int': 1408} |
| `otherPssKb` | {'int': 1408} |
| `processes` | {'int': 1408} |
| `pssFallbackProcesses` | {'int': 1408} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
