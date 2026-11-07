# sandbox_telemetry_parse — 2026-11-07 13:07:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=474723 lines=1057
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1048 |
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
| `chromeBrowserPssKb` | {'int': 1048} |
| `chromeGpuPssKb` | {'int': 1048} |
| `chromeOtherPssKb` | {'int': 1048} |
| `chromeProcesses` | {'int': 1048} |
| `chromeProfiles` | {'int': 1048} |
| `chromeRendererMaxPssKb` | {'int': 1048} |
| `chromeRendererPssKb` | {'int': 1048} |
| `chromeRenderers` | {'int': 1048} |
| `chromeTabs` | {'int': 1048} |
| `chromeTabsProbedProfiles` | {'int': 1048} |
| `chromeUtilityPssKb` | {'int': 1048} |
| `desktopPssKb` | {'int': 1048} |
| `hostPssKb` | {'int': 1048} |
| `kind` | {'str': 1048} |
| `memAvailableKb` | {'int': 1048} |
| `memTotalKb` | {'int': 1048} |
| `otherPssKb` | {'int': 1048} |
| `processes` | {'int': 1048} |
| `pssFallbackProcesses` | {'int': 1048} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
