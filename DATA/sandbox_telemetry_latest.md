# sandbox_telemetry_parse — 2026-11-27 21:38:19 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=600088 lines=1333
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1325 |
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
| `chromeBrowserPssKb` | {'int': 1325} |
| `chromeGpuPssKb` | {'int': 1325} |
| `chromeOtherPssKb` | {'int': 1325} |
| `chromeProcesses` | {'int': 1325} |
| `chromeProfiles` | {'int': 1325} |
| `chromeRendererMaxPssKb` | {'int': 1325} |
| `chromeRendererPssKb` | {'int': 1325} |
| `chromeRenderers` | {'int': 1325} |
| `chromeTabs` | {'int': 1325} |
| `chromeTabsProbedProfiles` | {'int': 1325} |
| `chromeUtilityPssKb` | {'int': 1325} |
| `desktopPssKb` | {'int': 1325} |
| `hostPssKb` | {'int': 1325} |
| `kind` | {'str': 1325} |
| `memAvailableKb` | {'int': 1325} |
| `memTotalKb` | {'int': 1325} |
| `otherPssKb` | {'int': 1325} |
| `processes` | {'int': 1325} |
| `pssFallbackProcesses` | {'int': 1325} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
