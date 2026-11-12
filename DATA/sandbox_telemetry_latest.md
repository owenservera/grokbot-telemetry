# sandbox_telemetry_parse — 2026-11-12 22:00:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2345112 lines=5190
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5181 |
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
| `chromeBrowserPssKb` | {'int': 5181} |
| `chromeGpuPssKb` | {'int': 5181} |
| `chromeOtherPssKb` | {'int': 5181} |
| `chromeProcesses` | {'int': 5181} |
| `chromeProfiles` | {'int': 5181} |
| `chromeRendererMaxPssKb` | {'int': 5181} |
| `chromeRendererPssKb` | {'int': 5181} |
| `chromeRenderers` | {'int': 5181} |
| `chromeTabs` | {'int': 5181} |
| `chromeTabsProbedProfiles` | {'int': 5181} |
| `chromeUtilityPssKb` | {'int': 5181} |
| `desktopPssKb` | {'int': 5181} |
| `hostPssKb` | {'int': 5181} |
| `kind` | {'str': 5181} |
| `memAvailableKb` | {'int': 5181} |
| `memTotalKb` | {'int': 5181} |
| `otherPssKb` | {'int': 5181} |
| `processes` | {'int': 5181} |
| `pssFallbackProcesses` | {'int': 5181} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
