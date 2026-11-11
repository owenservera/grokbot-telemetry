# sandbox_telemetry_parse — 2026-11-11 22:30:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1850808 lines=4098
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4089 |
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
| `chromeBrowserPssKb` | {'int': 4089} |
| `chromeGpuPssKb` | {'int': 4089} |
| `chromeOtherPssKb` | {'int': 4089} |
| `chromeProcesses` | {'int': 4089} |
| `chromeProfiles` | {'int': 4089} |
| `chromeRendererMaxPssKb` | {'int': 4089} |
| `chromeRendererPssKb` | {'int': 4089} |
| `chromeRenderers` | {'int': 4089} |
| `chromeTabs` | {'int': 4089} |
| `chromeTabsProbedProfiles` | {'int': 4089} |
| `chromeUtilityPssKb` | {'int': 4089} |
| `desktopPssKb` | {'int': 4089} |
| `hostPssKb` | {'int': 4089} |
| `kind` | {'str': 4089} |
| `memAvailableKb` | {'int': 4089} |
| `memTotalKb` | {'int': 4089} |
| `otherPssKb` | {'int': 4089} |
| `processes` | {'int': 4089} |
| `pssFallbackProcesses` | {'int': 4089} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
