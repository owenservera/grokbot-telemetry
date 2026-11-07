# sandbox_telemetry_parse — 2026-11-07 10:56:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=428136 lines=954
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 945 |
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
| `chromeBrowserPssKb` | {'int': 945} |
| `chromeGpuPssKb` | {'int': 945} |
| `chromeOtherPssKb` | {'int': 945} |
| `chromeProcesses` | {'int': 945} |
| `chromeProfiles` | {'int': 945} |
| `chromeRendererMaxPssKb` | {'int': 945} |
| `chromeRendererPssKb` | {'int': 945} |
| `chromeRenderers` | {'int': 945} |
| `chromeTabs` | {'int': 945} |
| `chromeTabsProbedProfiles` | {'int': 945} |
| `chromeUtilityPssKb` | {'int': 945} |
| `desktopPssKb` | {'int': 945} |
| `hostPssKb` | {'int': 945} |
| `kind` | {'str': 945} |
| `memAvailableKb` | {'int': 945} |
| `memTotalKb` | {'int': 945} |
| `otherPssKb` | {'int': 945} |
| `processes` | {'int': 945} |
| `pssFallbackProcesses` | {'int': 945} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
