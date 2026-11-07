# sandbox_telemetry_parse — 2026-11-07 14:45:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=505943 lines=1126
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1117 |
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
| `chromeBrowserPssKb` | {'int': 1117} |
| `chromeGpuPssKb` | {'int': 1117} |
| `chromeOtherPssKb` | {'int': 1117} |
| `chromeProcesses` | {'int': 1117} |
| `chromeProfiles` | {'int': 1117} |
| `chromeRendererMaxPssKb` | {'int': 1117} |
| `chromeRendererPssKb` | {'int': 1117} |
| `chromeRenderers` | {'int': 1117} |
| `chromeTabs` | {'int': 1117} |
| `chromeTabsProbedProfiles` | {'int': 1117} |
| `chromeUtilityPssKb` | {'int': 1117} |
| `desktopPssKb` | {'int': 1117} |
| `hostPssKb` | {'int': 1117} |
| `kind` | {'str': 1117} |
| `memAvailableKb` | {'int': 1117} |
| `memTotalKb` | {'int': 1117} |
| `otherPssKb` | {'int': 1117} |
| `processes` | {'int': 1117} |
| `pssFallbackProcesses` | {'int': 1117} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
