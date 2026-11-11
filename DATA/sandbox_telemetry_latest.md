# sandbox_telemetry_parse — 2026-11-11 13:30:09 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1651658 lines=3658
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3649 |
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
| `chromeBrowserPssKb` | {'int': 3649} |
| `chromeGpuPssKb` | {'int': 3649} |
| `chromeOtherPssKb` | {'int': 3649} |
| `chromeProcesses` | {'int': 3649} |
| `chromeProfiles` | {'int': 3649} |
| `chromeRendererMaxPssKb` | {'int': 3649} |
| `chromeRendererPssKb` | {'int': 3649} |
| `chromeRenderers` | {'int': 3649} |
| `chromeTabs` | {'int': 3649} |
| `chromeTabsProbedProfiles` | {'int': 3649} |
| `chromeUtilityPssKb` | {'int': 3649} |
| `desktopPssKb` | {'int': 3649} |
| `hostPssKb` | {'int': 3649} |
| `kind` | {'str': 3649} |
| `memAvailableKb` | {'int': 3649} |
| `memTotalKb` | {'int': 3649} |
| `otherPssKb` | {'int': 3649} |
| `processes` | {'int': 3649} |
| `pssFallbackProcesses` | {'int': 3649} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
