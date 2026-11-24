# sandbox_telemetry_parse — 2026-11-24 13:40:30 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2307768 lines=5115
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5100 |
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
| `chromeBrowserPssKb` | {'int': 5100} |
| `chromeGpuPssKb` | {'int': 5100} |
| `chromeOtherPssKb` | {'int': 5100} |
| `chromeProcesses` | {'int': 5100} |
| `chromeProfiles` | {'int': 5100} |
| `chromeRendererMaxPssKb` | {'int': 5100} |
| `chromeRendererPssKb` | {'int': 5100} |
| `chromeRenderers` | {'int': 5100} |
| `chromeTabs` | {'int': 5100} |
| `chromeTabsProbedProfiles` | {'int': 5100} |
| `chromeUtilityPssKb` | {'int': 5100} |
| `desktopPssKb` | {'int': 5100} |
| `hostPssKb` | {'int': 5100} |
| `kind` | {'str': 5100} |
| `memAvailableKb` | {'int': 5100} |
| `memTotalKb` | {'int': 5100} |
| `otherPssKb` | {'int': 5100} |
| `processes` | {'int': 5100} |
| `pssFallbackProcesses` | {'int': 5100} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
