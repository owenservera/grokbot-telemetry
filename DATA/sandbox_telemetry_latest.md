# sandbox_telemetry_parse — 2026-11-25 10:29:21 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2718105 lines=6022
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6007 |
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
| `chromeBrowserPssKb` | {'int': 6007} |
| `chromeGpuPssKb` | {'int': 6007} |
| `chromeOtherPssKb` | {'int': 6007} |
| `chromeProcesses` | {'int': 6007} |
| `chromeProfiles` | {'int': 6007} |
| `chromeRendererMaxPssKb` | {'int': 6007} |
| `chromeRendererPssKb` | {'int': 6007} |
| `chromeRenderers` | {'int': 6007} |
| `chromeTabs` | {'int': 6007} |
| `chromeTabsProbedProfiles` | {'int': 6007} |
| `chromeUtilityPssKb` | {'int': 6007} |
| `desktopPssKb` | {'int': 6007} |
| `hostPssKb` | {'int': 6007} |
| `kind` | {'str': 6007} |
| `memAvailableKb` | {'int': 6007} |
| `memTotalKb` | {'int': 6007} |
| `otherPssKb` | {'int': 6007} |
| `processes` | {'int': 6007} |
| `pssFallbackProcesses` | {'int': 6007} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
