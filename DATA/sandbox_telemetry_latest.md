# sandbox_telemetry_parse — 2026-11-19 15:48:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1338402 lines=2967
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2958 |
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
| `chromeBrowserPssKb` | {'int': 2958} |
| `chromeGpuPssKb` | {'int': 2958} |
| `chromeOtherPssKb` | {'int': 2958} |
| `chromeProcesses` | {'int': 2958} |
| `chromeProfiles` | {'int': 2958} |
| `chromeRendererMaxPssKb` | {'int': 2958} |
| `chromeRendererPssKb` | {'int': 2958} |
| `chromeRenderers` | {'int': 2958} |
| `chromeTabs` | {'int': 2958} |
| `chromeTabsProbedProfiles` | {'int': 2958} |
| `chromeUtilityPssKb` | {'int': 2958} |
| `desktopPssKb` | {'int': 2958} |
| `hostPssKb` | {'int': 2958} |
| `kind` | {'str': 2958} |
| `memAvailableKb` | {'int': 2958} |
| `memTotalKb` | {'int': 2958} |
| `otherPssKb` | {'int': 2958} |
| `processes` | {'int': 2958} |
| `pssFallbackProcesses` | {'int': 2958} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
