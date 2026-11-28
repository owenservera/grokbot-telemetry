# sandbox_telemetry_parse — 2026-11-28 05:17:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=747149 lines=1658
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1650 |
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
| `chromeBrowserPssKb` | {'int': 1650} |
| `chromeGpuPssKb` | {'int': 1650} |
| `chromeOtherPssKb` | {'int': 1650} |
| `chromeProcesses` | {'int': 1650} |
| `chromeProfiles` | {'int': 1650} |
| `chromeRendererMaxPssKb` | {'int': 1650} |
| `chromeRendererPssKb` | {'int': 1650} |
| `chromeRenderers` | {'int': 1650} |
| `chromeTabs` | {'int': 1650} |
| `chromeTabsProbedProfiles` | {'int': 1650} |
| `chromeUtilityPssKb` | {'int': 1650} |
| `desktopPssKb` | {'int': 1650} |
| `hostPssKb` | {'int': 1650} |
| `kind` | {'str': 1650} |
| `memAvailableKb` | {'int': 1650} |
| `memTotalKb` | {'int': 1650} |
| `otherPssKb` | {'int': 1650} |
| `processes` | {'int': 1650} |
| `pssFallbackProcesses` | {'int': 1650} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
