# sandbox_telemetry_parse — 2026-11-12 00:38:16 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1892428 lines=4190
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4181 |
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
| `chromeBrowserPssKb` | {'int': 4181} |
| `chromeGpuPssKb` | {'int': 4181} |
| `chromeOtherPssKb` | {'int': 4181} |
| `chromeProcesses` | {'int': 4181} |
| `chromeProfiles` | {'int': 4181} |
| `chromeRendererMaxPssKb` | {'int': 4181} |
| `chromeRendererPssKb` | {'int': 4181} |
| `chromeRenderers` | {'int': 4181} |
| `chromeTabs` | {'int': 4181} |
| `chromeTabsProbedProfiles` | {'int': 4181} |
| `chromeUtilityPssKb` | {'int': 4181} |
| `desktopPssKb` | {'int': 4181} |
| `hostPssKb` | {'int': 4181} |
| `kind` | {'str': 4181} |
| `memAvailableKb` | {'int': 4181} |
| `memTotalKb` | {'int': 4181} |
| `otherPssKb` | {'int': 4181} |
| `processes` | {'int': 4181} |
| `pssFallbackProcesses` | {'int': 4181} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
