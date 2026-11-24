# sandbox_telemetry_parse — 2026-11-25 00:42:55 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2523186 lines=5591
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5576 |
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
| `chromeBrowserPssKb` | {'int': 5576} |
| `chromeGpuPssKb` | {'int': 5576} |
| `chromeOtherPssKb` | {'int': 5576} |
| `chromeProcesses` | {'int': 5576} |
| `chromeProfiles` | {'int': 5576} |
| `chromeRendererMaxPssKb` | {'int': 5576} |
| `chromeRendererPssKb` | {'int': 5576} |
| `chromeRenderers` | {'int': 5576} |
| `chromeTabs` | {'int': 5576} |
| `chromeTabsProbedProfiles` | {'int': 5576} |
| `chromeUtilityPssKb` | {'int': 5576} |
| `desktopPssKb` | {'int': 5576} |
| `hostPssKb` | {'int': 5576} |
| `kind` | {'str': 5576} |
| `memAvailableKb` | {'int': 5576} |
| `memTotalKb` | {'int': 5576} |
| `otherPssKb` | {'int': 5576} |
| `processes` | {'int': 5576} |
| `pssFallbackProcesses` | {'int': 5576} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
