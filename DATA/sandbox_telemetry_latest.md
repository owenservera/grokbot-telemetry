# sandbox_telemetry_parse — 2026-11-27 02:38:16 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=196936 lines=442
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 434 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 434} |
| `chromeGpuPssKb` | {'int': 434} |
| `chromeOtherPssKb` | {'int': 434} |
| `chromeProcesses` | {'int': 434} |
| `chromeProfiles` | {'int': 434} |
| `chromeRendererMaxPssKb` | {'int': 434} |
| `chromeRendererPssKb` | {'int': 434} |
| `chromeRenderers` | {'int': 434} |
| `chromeTabs` | {'int': 434} |
| `chromeTabsProbedProfiles` | {'int': 434} |
| `chromeUtilityPssKb` | {'int': 434} |
| `desktopPssKb` | {'int': 434} |
| `hostPssKb` | {'int': 434} |
| `kind` | {'str': 434} |
| `memAvailableKb` | {'int': 434} |
| `memTotalKb` | {'int': 434} |
| `otherPssKb` | {'int': 434} |
| `processes` | {'int': 434} |
| `pssFallbackProcesses` | {'int': 434} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
