# sandbox_telemetry_parse — 2026-11-24 00:43:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2060867 lines=4569
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4554 |
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
| `chromeBrowserPssKb` | {'int': 4554} |
| `chromeGpuPssKb` | {'int': 4554} |
| `chromeOtherPssKb` | {'int': 4554} |
| `chromeProcesses` | {'int': 4554} |
| `chromeProfiles` | {'int': 4554} |
| `chromeRendererMaxPssKb` | {'int': 4554} |
| `chromeRendererPssKb` | {'int': 4554} |
| `chromeRenderers` | {'int': 4554} |
| `chromeTabs` | {'int': 4554} |
| `chromeTabsProbedProfiles` | {'int': 4554} |
| `chromeUtilityPssKb` | {'int': 4554} |
| `desktopPssKb` | {'int': 4554} |
| `hostPssKb` | {'int': 4554} |
| `kind` | {'str': 4554} |
| `memAvailableKb` | {'int': 4554} |
| `memTotalKb` | {'int': 4554} |
| `otherPssKb` | {'int': 4554} |
| `processes` | {'int': 4554} |
| `pssFallbackProcesses` | {'int': 4554} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
