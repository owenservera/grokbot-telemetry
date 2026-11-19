# sandbox_telemetry_parse — 2026-11-19 09:21:10 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1202669 lines=2667
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2658 |
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
| `chromeBrowserPssKb` | {'int': 2658} |
| `chromeGpuPssKb` | {'int': 2658} |
| `chromeOtherPssKb` | {'int': 2658} |
| `chromeProcesses` | {'int': 2658} |
| `chromeProfiles` | {'int': 2658} |
| `chromeRendererMaxPssKb` | {'int': 2658} |
| `chromeRendererPssKb` | {'int': 2658} |
| `chromeRenderers` | {'int': 2658} |
| `chromeTabs` | {'int': 2658} |
| `chromeTabsProbedProfiles` | {'int': 2658} |
| `chromeUtilityPssKb` | {'int': 2658} |
| `desktopPssKb` | {'int': 2658} |
| `hostPssKb` | {'int': 2658} |
| `kind` | {'str': 2658} |
| `memAvailableKb` | {'int': 2658} |
| `memTotalKb` | {'int': 2658} |
| `otherPssKb` | {'int': 2658} |
| `processes` | {'int': 2658} |
| `pssFallbackProcesses` | {'int': 2658} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
