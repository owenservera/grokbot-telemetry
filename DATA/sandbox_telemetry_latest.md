# sandbox_telemetry_parse — 2026-11-25 23:26:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2971318 lines=6582
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6567 |
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
| `chromeBrowserPssKb` | {'int': 6567} |
| `chromeGpuPssKb` | {'int': 6567} |
| `chromeOtherPssKb` | {'int': 6567} |
| `chromeProcesses` | {'int': 6567} |
| `chromeProfiles` | {'int': 6567} |
| `chromeRendererMaxPssKb` | {'int': 6567} |
| `chromeRendererPssKb` | {'int': 6567} |
| `chromeRenderers` | {'int': 6567} |
| `chromeTabs` | {'int': 6567} |
| `chromeTabsProbedProfiles` | {'int': 6567} |
| `chromeUtilityPssKb` | {'int': 6567} |
| `desktopPssKb` | {'int': 6567} |
| `hostPssKb` | {'int': 6567} |
| `kind` | {'str': 6567} |
| `memAvailableKb` | {'int': 6567} |
| `memTotalKb` | {'int': 6567} |
| `otherPssKb` | {'int': 6567} |
| `processes` | {'int': 6567} |
| `pssFallbackProcesses` | {'int': 6567} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
