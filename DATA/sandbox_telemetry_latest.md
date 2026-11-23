# sandbox_telemetry_parse — 2026-11-23 14:42:13 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1877108 lines=4163
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4148 |
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
| `chromeBrowserPssKb` | {'int': 4148} |
| `chromeGpuPssKb` | {'int': 4148} |
| `chromeOtherPssKb` | {'int': 4148} |
| `chromeProcesses` | {'int': 4148} |
| `chromeProfiles` | {'int': 4148} |
| `chromeRendererMaxPssKb` | {'int': 4148} |
| `chromeRendererPssKb` | {'int': 4148} |
| `chromeRenderers` | {'int': 4148} |
| `chromeTabs` | {'int': 4148} |
| `chromeTabsProbedProfiles` | {'int': 4148} |
| `chromeUtilityPssKb` | {'int': 4148} |
| `desktopPssKb` | {'int': 4148} |
| `hostPssKb` | {'int': 4148} |
| `kind` | {'str': 4148} |
| `memAvailableKb` | {'int': 4148} |
| `memTotalKb` | {'int': 4148} |
| `otherPssKb` | {'int': 4148} |
| `processes` | {'int': 4148} |
| `pssFallbackProcesses` | {'int': 4148} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
