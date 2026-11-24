# sandbox_telemetry_parse — 2026-11-24 22:28:38 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2477067 lines=5489
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5474 |
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
| `chromeBrowserPssKb` | {'int': 5474} |
| `chromeGpuPssKb` | {'int': 5474} |
| `chromeOtherPssKb` | {'int': 5474} |
| `chromeProcesses` | {'int': 5474} |
| `chromeProfiles` | {'int': 5474} |
| `chromeRendererMaxPssKb` | {'int': 5474} |
| `chromeRendererPssKb` | {'int': 5474} |
| `chromeRenderers` | {'int': 5474} |
| `chromeTabs` | {'int': 5474} |
| `chromeTabsProbedProfiles` | {'int': 5474} |
| `chromeUtilityPssKb` | {'int': 5474} |
| `desktopPssKb` | {'int': 5474} |
| `hostPssKb` | {'int': 5474} |
| `kind` | {'str': 5474} |
| `memAvailableKb` | {'int': 5474} |
| `memTotalKb` | {'int': 5474} |
| `otherPssKb` | {'int': 5474} |
| `processes` | {'int': 5474} |
| `pssFallbackProcesses` | {'int': 5474} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
