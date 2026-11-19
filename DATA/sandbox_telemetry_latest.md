# sandbox_telemetry_parse — 2026-11-19 03:16:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1098680 lines=2437
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2428 |
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
| `chromeBrowserPssKb` | {'int': 2428} |
| `chromeGpuPssKb` | {'int': 2428} |
| `chromeOtherPssKb` | {'int': 2428} |
| `chromeProcesses` | {'int': 2428} |
| `chromeProfiles` | {'int': 2428} |
| `chromeRendererMaxPssKb` | {'int': 2428} |
| `chromeRendererPssKb` | {'int': 2428} |
| `chromeRenderers` | {'int': 2428} |
| `chromeTabs` | {'int': 2428} |
| `chromeTabsProbedProfiles` | {'int': 2428} |
| `chromeUtilityPssKb` | {'int': 2428} |
| `desktopPssKb` | {'int': 2428} |
| `hostPssKb` | {'int': 2428} |
| `kind` | {'str': 2428} |
| `memAvailableKb` | {'int': 2428} |
| `memTotalKb` | {'int': 2428} |
| `otherPssKb` | {'int': 2428} |
| `processes` | {'int': 2428} |
| `pssFallbackProcesses` | {'int': 2428} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
