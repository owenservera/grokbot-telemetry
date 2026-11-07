# sandbox_telemetry_parse — 2026-11-07 12:56:30 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=470203 lines=1047
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1038 |
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
| `chromeBrowserPssKb` | {'int': 1038} |
| `chromeGpuPssKb` | {'int': 1038} |
| `chromeOtherPssKb` | {'int': 1038} |
| `chromeProcesses` | {'int': 1038} |
| `chromeProfiles` | {'int': 1038} |
| `chromeRendererMaxPssKb` | {'int': 1038} |
| `chromeRendererPssKb` | {'int': 1038} |
| `chromeRenderers` | {'int': 1038} |
| `chromeTabs` | {'int': 1038} |
| `chromeTabsProbedProfiles` | {'int': 1038} |
| `chromeUtilityPssKb` | {'int': 1038} |
| `desktopPssKb` | {'int': 1038} |
| `hostPssKb` | {'int': 1038} |
| `kind` | {'str': 1038} |
| `memAvailableKb` | {'int': 1038} |
| `memTotalKb` | {'int': 1038} |
| `otherPssKb` | {'int': 1038} |
| `processes` | {'int': 1038} |
| `pssFallbackProcesses` | {'int': 1038} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
