# sandbox_telemetry_parse — 2026-11-12 07:29:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2025013 lines=4483
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4474 |
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
| `chromeBrowserPssKb` | {'int': 4474} |
| `chromeGpuPssKb` | {'int': 4474} |
| `chromeOtherPssKb` | {'int': 4474} |
| `chromeProcesses` | {'int': 4474} |
| `chromeProfiles` | {'int': 4474} |
| `chromeRendererMaxPssKb` | {'int': 4474} |
| `chromeRendererPssKb` | {'int': 4474} |
| `chromeRenderers` | {'int': 4474} |
| `chromeTabs` | {'int': 4474} |
| `chromeTabsProbedProfiles` | {'int': 4474} |
| `chromeUtilityPssKb` | {'int': 4474} |
| `desktopPssKb` | {'int': 4474} |
| `hostPssKb` | {'int': 4474} |
| `kind` | {'str': 4474} |
| `memAvailableKb` | {'int': 4474} |
| `memTotalKb` | {'int': 4474} |
| `otherPssKb` | {'int': 4474} |
| `processes` | {'int': 4474} |
| `pssFallbackProcesses` | {'int': 4474} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
