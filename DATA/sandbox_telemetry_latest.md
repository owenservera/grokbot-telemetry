# sandbox_telemetry_parse — 2026-11-09 19:50:14 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=815963 lines=1811
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1802 |
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
| `chromeBrowserPssKb` | {'int': 1802} |
| `chromeGpuPssKb` | {'int': 1802} |
| `chromeOtherPssKb` | {'int': 1802} |
| `chromeProcesses` | {'int': 1802} |
| `chromeProfiles` | {'int': 1802} |
| `chromeRendererMaxPssKb` | {'int': 1802} |
| `chromeRendererPssKb` | {'int': 1802} |
| `chromeRenderers` | {'int': 1802} |
| `chromeTabs` | {'int': 1802} |
| `chromeTabsProbedProfiles` | {'int': 1802} |
| `chromeUtilityPssKb` | {'int': 1802} |
| `desktopPssKb` | {'int': 1802} |
| `hostPssKb` | {'int': 1802} |
| `kind` | {'str': 1802} |
| `memAvailableKb` | {'int': 1802} |
| `memTotalKb` | {'int': 1802} |
| `otherPssKb` | {'int': 1802} |
| `processes` | {'int': 1802} |
| `pssFallbackProcesses` | {'int': 1802} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
