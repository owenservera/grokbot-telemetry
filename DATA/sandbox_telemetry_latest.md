# sandbox_telemetry_parse — 2026-11-19 12:45:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1278650 lines=2835
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2826 |
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
| `chromeBrowserPssKb` | {'int': 2826} |
| `chromeGpuPssKb` | {'int': 2826} |
| `chromeOtherPssKb` | {'int': 2826} |
| `chromeProcesses` | {'int': 2826} |
| `chromeProfiles` | {'int': 2826} |
| `chromeRendererMaxPssKb` | {'int': 2826} |
| `chromeRendererPssKb` | {'int': 2826} |
| `chromeRenderers` | {'int': 2826} |
| `chromeTabs` | {'int': 2826} |
| `chromeTabsProbedProfiles` | {'int': 2826} |
| `chromeUtilityPssKb` | {'int': 2826} |
| `desktopPssKb` | {'int': 2826} |
| `hostPssKb` | {'int': 2826} |
| `kind` | {'str': 2826} |
| `memAvailableKb` | {'int': 2826} |
| `memTotalKb` | {'int': 2826} |
| `otherPssKb` | {'int': 2826} |
| `processes` | {'int': 2826} |
| `pssFallbackProcesses` | {'int': 2826} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
