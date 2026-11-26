# sandbox_telemetry_parse — 2026-11-26 10:37:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3213826 lines=7118
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7103 |
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
| `chromeBrowserPssKb` | {'int': 7103} |
| `chromeGpuPssKb` | {'int': 7103} |
| `chromeOtherPssKb` | {'int': 7103} |
| `chromeProcesses` | {'int': 7103} |
| `chromeProfiles` | {'int': 7103} |
| `chromeRendererMaxPssKb` | {'int': 7103} |
| `chromeRendererPssKb` | {'int': 7103} |
| `chromeRenderers` | {'int': 7103} |
| `chromeTabs` | {'int': 7103} |
| `chromeTabsProbedProfiles` | {'int': 7103} |
| `chromeUtilityPssKb` | {'int': 7103} |
| `desktopPssKb` | {'int': 7103} |
| `hostPssKb` | {'int': 7103} |
| `kind` | {'str': 7103} |
| `memAvailableKb` | {'int': 7103} |
| `memTotalKb` | {'int': 7103} |
| `otherPssKb` | {'int': 7103} |
| `processes` | {'int': 7103} |
| `pssFallbackProcesses` | {'int': 7103} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
