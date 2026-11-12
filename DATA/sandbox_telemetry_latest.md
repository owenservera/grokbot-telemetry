# sandbox_telemetry_parse — 2026-11-12 20:03:49 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2305291 lines=5102
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5093 |
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
| `chromeBrowserPssKb` | {'int': 5093} |
| `chromeGpuPssKb` | {'int': 5093} |
| `chromeOtherPssKb` | {'int': 5093} |
| `chromeProcesses` | {'int': 5093} |
| `chromeProfiles` | {'int': 5093} |
| `chromeRendererMaxPssKb` | {'int': 5093} |
| `chromeRendererPssKb` | {'int': 5093} |
| `chromeRenderers` | {'int': 5093} |
| `chromeTabs` | {'int': 5093} |
| `chromeTabsProbedProfiles` | {'int': 5093} |
| `chromeUtilityPssKb` | {'int': 5093} |
| `desktopPssKb` | {'int': 5093} |
| `hostPssKb` | {'int': 5093} |
| `kind` | {'str': 5093} |
| `memAvailableKb` | {'int': 5093} |
| `memTotalKb` | {'int': 5093} |
| `otherPssKb` | {'int': 5093} |
| `processes` | {'int': 5093} |
| `pssFallbackProcesses` | {'int': 5093} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
