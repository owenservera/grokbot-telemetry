# sandbox_telemetry_parse — 2026-11-27 05:11:54 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=251209 lines=562
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 554 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 554} |
| `chromeGpuPssKb` | {'int': 554} |
| `chromeOtherPssKb` | {'int': 554} |
| `chromeProcesses` | {'int': 554} |
| `chromeProfiles` | {'int': 554} |
| `chromeRendererMaxPssKb` | {'int': 554} |
| `chromeRendererPssKb` | {'int': 554} |
| `chromeRenderers` | {'int': 554} |
| `chromeTabs` | {'int': 554} |
| `chromeTabsProbedProfiles` | {'int': 554} |
| `chromeUtilityPssKb` | {'int': 554} |
| `desktopPssKb` | {'int': 554} |
| `hostPssKb` | {'int': 554} |
| `kind` | {'str': 554} |
| `memAvailableKb` | {'int': 554} |
| `memTotalKb` | {'int': 554} |
| `otherPssKb` | {'int': 554} |
| `processes` | {'int': 554} |
| `pssFallbackProcesses` | {'int': 554} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
