# sandbox_telemetry_parse — 2026-11-25 15:23:19 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2808979 lines=6223
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6208 |
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
| `chromeBrowserPssKb` | {'int': 6208} |
| `chromeGpuPssKb` | {'int': 6208} |
| `chromeOtherPssKb` | {'int': 6208} |
| `chromeProcesses` | {'int': 6208} |
| `chromeProfiles` | {'int': 6208} |
| `chromeRendererMaxPssKb` | {'int': 6208} |
| `chromeRendererPssKb` | {'int': 6208} |
| `chromeRenderers` | {'int': 6208} |
| `chromeTabs` | {'int': 6208} |
| `chromeTabsProbedProfiles` | {'int': 6208} |
| `chromeUtilityPssKb` | {'int': 6208} |
| `desktopPssKb` | {'int': 6208} |
| `hostPssKb` | {'int': 6208} |
| `kind` | {'str': 6208} |
| `memAvailableKb` | {'int': 6208} |
| `memTotalKb` | {'int': 6208} |
| `otherPssKb` | {'int': 6208} |
| `processes` | {'int': 6208} |
| `pssFallbackProcesses` | {'int': 6208} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
