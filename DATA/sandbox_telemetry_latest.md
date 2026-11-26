# sandbox_telemetry_parse — 2026-11-26 04:41:37 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3077621 lines=6817
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6802 |
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
| `chromeBrowserPssKb` | {'int': 6802} |
| `chromeGpuPssKb` | {'int': 6802} |
| `chromeOtherPssKb` | {'int': 6802} |
| `chromeProcesses` | {'int': 6802} |
| `chromeProfiles` | {'int': 6802} |
| `chromeRendererMaxPssKb` | {'int': 6802} |
| `chromeRendererPssKb` | {'int': 6802} |
| `chromeRenderers` | {'int': 6802} |
| `chromeTabs` | {'int': 6802} |
| `chromeTabsProbedProfiles` | {'int': 6802} |
| `chromeUtilityPssKb` | {'int': 6802} |
| `desktopPssKb` | {'int': 6802} |
| `hostPssKb` | {'int': 6802} |
| `kind` | {'str': 6802} |
| `memAvailableKb` | {'int': 6802} |
| `memTotalKb` | {'int': 6802} |
| `otherPssKb` | {'int': 6802} |
| `processes` | {'int': 6802} |
| `pssFallbackProcesses` | {'int': 6802} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
