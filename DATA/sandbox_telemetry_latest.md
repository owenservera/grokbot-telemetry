# sandbox_telemetry_parse — 2026-11-11 22:45:04 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1855791 lines=4109
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4100 |
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
| `chromeBrowserPssKb` | {'int': 4100} |
| `chromeGpuPssKb` | {'int': 4100} |
| `chromeOtherPssKb` | {'int': 4100} |
| `chromeProcesses` | {'int': 4100} |
| `chromeProfiles` | {'int': 4100} |
| `chromeRendererMaxPssKb` | {'int': 4100} |
| `chromeRendererPssKb` | {'int': 4100} |
| `chromeRenderers` | {'int': 4100} |
| `chromeTabs` | {'int': 4100} |
| `chromeTabsProbedProfiles` | {'int': 4100} |
| `chromeUtilityPssKb` | {'int': 4100} |
| `desktopPssKb` | {'int': 4100} |
| `hostPssKb` | {'int': 4100} |
| `kind` | {'str': 4100} |
| `memAvailableKb` | {'int': 4100} |
| `memTotalKb` | {'int': 4100} |
| `otherPssKb` | {'int': 4100} |
| `processes` | {'int': 4100} |
| `pssFallbackProcesses` | {'int': 4100} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
