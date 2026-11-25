# sandbox_telemetry_parse — 2026-11-25 11:43:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2742061 lines=6075
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6060 |
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
| `chromeBrowserPssKb` | {'int': 6060} |
| `chromeGpuPssKb` | {'int': 6060} |
| `chromeOtherPssKb` | {'int': 6060} |
| `chromeProcesses` | {'int': 6060} |
| `chromeProfiles` | {'int': 6060} |
| `chromeRendererMaxPssKb` | {'int': 6060} |
| `chromeRendererPssKb` | {'int': 6060} |
| `chromeRenderers` | {'int': 6060} |
| `chromeTabs` | {'int': 6060} |
| `chromeTabsProbedProfiles` | {'int': 6060} |
| `chromeUtilityPssKb` | {'int': 6060} |
| `desktopPssKb` | {'int': 6060} |
| `hostPssKb` | {'int': 6060} |
| `kind` | {'str': 6060} |
| `memAvailableKb` | {'int': 6060} |
| `memTotalKb` | {'int': 6060} |
| `otherPssKb` | {'int': 6060} |
| `processes` | {'int': 6060} |
| `pssFallbackProcesses` | {'int': 6060} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
