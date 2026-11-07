# sandbox_telemetry_parse — 2026-11-07 07:39:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=364359 lines=813
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 804 |
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
| `chromeBrowserPssKb` | {'int': 804} |
| `chromeGpuPssKb` | {'int': 804} |
| `chromeOtherPssKb` | {'int': 804} |
| `chromeProcesses` | {'int': 804} |
| `chromeProfiles` | {'int': 804} |
| `chromeRendererMaxPssKb` | {'int': 804} |
| `chromeRendererPssKb` | {'int': 804} |
| `chromeRenderers` | {'int': 804} |
| `chromeTabs` | {'int': 804} |
| `chromeTabsProbedProfiles` | {'int': 804} |
| `chromeUtilityPssKb` | {'int': 804} |
| `desktopPssKb` | {'int': 804} |
| `hostPssKb` | {'int': 804} |
| `kind` | {'str': 804} |
| `memAvailableKb` | {'int': 804} |
| `memTotalKb` | {'int': 804} |
| `otherPssKb` | {'int': 804} |
| `processes` | {'int': 804} |
| `pssFallbackProcesses` | {'int': 804} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
