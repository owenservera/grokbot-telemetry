# sandbox_telemetry_parse — 2026-11-10 23:28:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1374816 lines=3046
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3037 |
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
| `chromeBrowserPssKb` | {'int': 3037} |
| `chromeGpuPssKb` | {'int': 3037} |
| `chromeOtherPssKb` | {'int': 3037} |
| `chromeProcesses` | {'int': 3037} |
| `chromeProfiles` | {'int': 3037} |
| `chromeRendererMaxPssKb` | {'int': 3037} |
| `chromeRendererPssKb` | {'int': 3037} |
| `chromeRenderers` | {'int': 3037} |
| `chromeTabs` | {'int': 3037} |
| `chromeTabsProbedProfiles` | {'int': 3037} |
| `chromeUtilityPssKb` | {'int': 3037} |
| `desktopPssKb` | {'int': 3037} |
| `hostPssKb` | {'int': 3037} |
| `kind` | {'str': 3037} |
| `memAvailableKb` | {'int': 3037} |
| `memTotalKb` | {'int': 3037} |
| `otherPssKb` | {'int': 3037} |
| `processes` | {'int': 3037} |
| `pssFallbackProcesses` | {'int': 3037} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
