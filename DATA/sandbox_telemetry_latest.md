# sandbox_telemetry_parse — 2026-11-11 16:47:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1721793 lines=3813
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3804 |
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
| `chromeBrowserPssKb` | {'int': 3804} |
| `chromeGpuPssKb` | {'int': 3804} |
| `chromeOtherPssKb` | {'int': 3804} |
| `chromeProcesses` | {'int': 3804} |
| `chromeProfiles` | {'int': 3804} |
| `chromeRendererMaxPssKb` | {'int': 3804} |
| `chromeRendererPssKb` | {'int': 3804} |
| `chromeRenderers` | {'int': 3804} |
| `chromeTabs` | {'int': 3804} |
| `chromeTabsProbedProfiles` | {'int': 3804} |
| `chromeUtilityPssKb` | {'int': 3804} |
| `desktopPssKb` | {'int': 3804} |
| `hostPssKb` | {'int': 3804} |
| `kind` | {'str': 3804} |
| `memAvailableKb` | {'int': 3804} |
| `memTotalKb` | {'int': 3804} |
| `otherPssKb` | {'int': 3804} |
| `processes` | {'int': 3804} |
| `pssFallbackProcesses` | {'int': 3804} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
