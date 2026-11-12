# sandbox_telemetry_parse — 2026-11-12 04:33:04 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1969402 lines=4360
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4351 |
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
| `chromeBrowserPssKb` | {'int': 4351} |
| `chromeGpuPssKb` | {'int': 4351} |
| `chromeOtherPssKb` | {'int': 4351} |
| `chromeProcesses` | {'int': 4351} |
| `chromeProfiles` | {'int': 4351} |
| `chromeRendererMaxPssKb` | {'int': 4351} |
| `chromeRendererPssKb` | {'int': 4351} |
| `chromeRenderers` | {'int': 4351} |
| `chromeTabs` | {'int': 4351} |
| `chromeTabsProbedProfiles` | {'int': 4351} |
| `chromeUtilityPssKb` | {'int': 4351} |
| `desktopPssKb` | {'int': 4351} |
| `hostPssKb` | {'int': 4351} |
| `kind` | {'str': 4351} |
| `memAvailableKb` | {'int': 4351} |
| `memTotalKb` | {'int': 4351} |
| `otherPssKb` | {'int': 4351} |
| `processes` | {'int': 4351} |
| `pssFallbackProcesses` | {'int': 4351} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
