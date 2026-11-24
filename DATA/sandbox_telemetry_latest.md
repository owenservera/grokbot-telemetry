# sandbox_telemetry_parse — 2026-11-24 21:23:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2456256 lines=5443
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5428 |
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
| `chromeBrowserPssKb` | {'int': 5428} |
| `chromeGpuPssKb` | {'int': 5428} |
| `chromeOtherPssKb` | {'int': 5428} |
| `chromeProcesses` | {'int': 5428} |
| `chromeProfiles` | {'int': 5428} |
| `chromeRendererMaxPssKb` | {'int': 5428} |
| `chromeRendererPssKb` | {'int': 5428} |
| `chromeRenderers` | {'int': 5428} |
| `chromeTabs` | {'int': 5428} |
| `chromeTabsProbedProfiles` | {'int': 5428} |
| `chromeUtilityPssKb` | {'int': 5428} |
| `desktopPssKb` | {'int': 5428} |
| `hostPssKb` | {'int': 5428} |
| `kind` | {'str': 5428} |
| `memAvailableKb` | {'int': 5428} |
| `memTotalKb` | {'int': 5428} |
| `otherPssKb` | {'int': 5428} |
| `processes` | {'int': 5428} |
| `pssFallbackProcesses` | {'int': 5428} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
