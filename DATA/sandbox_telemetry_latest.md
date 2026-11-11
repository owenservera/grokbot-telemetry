# sandbox_telemetry_parse — 2026-11-11 09:56:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1572446 lines=3483
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3474 |
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
| `chromeBrowserPssKb` | {'int': 3474} |
| `chromeGpuPssKb` | {'int': 3474} |
| `chromeOtherPssKb` | {'int': 3474} |
| `chromeProcesses` | {'int': 3474} |
| `chromeProfiles` | {'int': 3474} |
| `chromeRendererMaxPssKb` | {'int': 3474} |
| `chromeRendererPssKb` | {'int': 3474} |
| `chromeRenderers` | {'int': 3474} |
| `chromeTabs` | {'int': 3474} |
| `chromeTabsProbedProfiles` | {'int': 3474} |
| `chromeUtilityPssKb` | {'int': 3474} |
| `desktopPssKb` | {'int': 3474} |
| `hostPssKb` | {'int': 3474} |
| `kind` | {'str': 3474} |
| `memAvailableKb` | {'int': 3474} |
| `memTotalKb` | {'int': 3474} |
| `otherPssKb` | {'int': 3474} |
| `processes` | {'int': 3474} |
| `pssFallbackProcesses` | {'int': 3474} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
