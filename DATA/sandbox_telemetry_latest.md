# sandbox_telemetry_parse — 2026-11-12 14:31:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2173015 lines=4810
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4801 |
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
| `chromeBrowserPssKb` | {'int': 4801} |
| `chromeGpuPssKb` | {'int': 4801} |
| `chromeOtherPssKb` | {'int': 4801} |
| `chromeProcesses` | {'int': 4801} |
| `chromeProfiles` | {'int': 4801} |
| `chromeRendererMaxPssKb` | {'int': 4801} |
| `chromeRendererPssKb` | {'int': 4801} |
| `chromeRenderers` | {'int': 4801} |
| `chromeTabs` | {'int': 4801} |
| `chromeTabsProbedProfiles` | {'int': 4801} |
| `chromeUtilityPssKb` | {'int': 4801} |
| `desktopPssKb` | {'int': 4801} |
| `hostPssKb` | {'int': 4801} |
| `kind` | {'str': 4801} |
| `memAvailableKb` | {'int': 4801} |
| `memTotalKb` | {'int': 4801} |
| `otherPssKb` | {'int': 4801} |
| `processes` | {'int': 4801} |
| `pssFallbackProcesses` | {'int': 4801} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
