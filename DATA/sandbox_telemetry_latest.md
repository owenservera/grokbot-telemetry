# sandbox_telemetry_parse — 2026-11-06 23:54:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=220097 lines=494
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 485 |
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
| `chromeBrowserPssKb` | {'int': 485} |
| `chromeGpuPssKb` | {'int': 485} |
| `chromeOtherPssKb` | {'int': 485} |
| `chromeProcesses` | {'int': 485} |
| `chromeProfiles` | {'int': 485} |
| `chromeRendererMaxPssKb` | {'int': 485} |
| `chromeRendererPssKb` | {'int': 485} |
| `chromeRenderers` | {'int': 485} |
| `chromeTabs` | {'int': 485} |
| `chromeTabsProbedProfiles` | {'int': 485} |
| `chromeUtilityPssKb` | {'int': 485} |
| `desktopPssKb` | {'int': 485} |
| `hostPssKb` | {'int': 485} |
| `kind` | {'str': 485} |
| `memAvailableKb` | {'int': 485} |
| `memTotalKb` | {'int': 485} |
| `otherPssKb` | {'int': 485} |
| `processes` | {'int': 485} |
| `pssFallbackProcesses` | {'int': 485} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
