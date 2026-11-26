# sandbox_telemetry_parse — 2026-11-26 04:49:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3079885 lines=6822
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6807 |
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
| `chromeBrowserPssKb` | {'int': 6807} |
| `chromeGpuPssKb` | {'int': 6807} |
| `chromeOtherPssKb` | {'int': 6807} |
| `chromeProcesses` | {'int': 6807} |
| `chromeProfiles` | {'int': 6807} |
| `chromeRendererMaxPssKb` | {'int': 6807} |
| `chromeRendererPssKb` | {'int': 6807} |
| `chromeRenderers` | {'int': 6807} |
| `chromeTabs` | {'int': 6807} |
| `chromeTabsProbedProfiles` | {'int': 6807} |
| `chromeUtilityPssKb` | {'int': 6807} |
| `desktopPssKb` | {'int': 6807} |
| `hostPssKb` | {'int': 6807} |
| `kind` | {'str': 6807} |
| `memAvailableKb` | {'int': 6807} |
| `memTotalKb` | {'int': 6807} |
| `otherPssKb` | {'int': 6807} |
| `processes` | {'int': 6807} |
| `pssFallbackProcesses` | {'int': 6807} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
