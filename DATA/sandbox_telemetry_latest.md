# sandbox_telemetry_parse — 2026-11-25 20:47:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2918871 lines=6466
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6451 |
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
| `chromeBrowserPssKb` | {'int': 6451} |
| `chromeGpuPssKb` | {'int': 6451} |
| `chromeOtherPssKb` | {'int': 6451} |
| `chromeProcesses` | {'int': 6451} |
| `chromeProfiles` | {'int': 6451} |
| `chromeRendererMaxPssKb` | {'int': 6451} |
| `chromeRendererPssKb` | {'int': 6451} |
| `chromeRenderers` | {'int': 6451} |
| `chromeTabs` | {'int': 6451} |
| `chromeTabsProbedProfiles` | {'int': 6451} |
| `chromeUtilityPssKb` | {'int': 6451} |
| `desktopPssKb` | {'int': 6451} |
| `hostPssKb` | {'int': 6451} |
| `kind` | {'str': 6451} |
| `memAvailableKb` | {'int': 6451} |
| `memTotalKb` | {'int': 6451} |
| `otherPssKb` | {'int': 6451} |
| `processes` | {'int': 6451} |
| `pssFallbackProcesses` | {'int': 6451} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
