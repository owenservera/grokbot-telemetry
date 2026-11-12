# sandbox_telemetry_parse — 2026-11-12 15:49:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2205178 lines=4881
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4872 |
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
| `chromeBrowserPssKb` | {'int': 4872} |
| `chromeGpuPssKb` | {'int': 4872} |
| `chromeOtherPssKb` | {'int': 4872} |
| `chromeProcesses` | {'int': 4872} |
| `chromeProfiles` | {'int': 4872} |
| `chromeRendererMaxPssKb` | {'int': 4872} |
| `chromeRendererPssKb` | {'int': 4872} |
| `chromeRenderers` | {'int': 4872} |
| `chromeTabs` | {'int': 4872} |
| `chromeTabsProbedProfiles` | {'int': 4872} |
| `chromeUtilityPssKb` | {'int': 4872} |
| `desktopPssKb` | {'int': 4872} |
| `hostPssKb` | {'int': 4872} |
| `kind` | {'str': 4872} |
| `memAvailableKb` | {'int': 4872} |
| `memTotalKb` | {'int': 4872} |
| `otherPssKb` | {'int': 4872} |
| `processes` | {'int': 4872} |
| `pssFallbackProcesses` | {'int': 4872} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
