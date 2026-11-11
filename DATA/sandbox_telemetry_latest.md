# sandbox_telemetry_parse — 2026-11-11 02:07:18 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1427756 lines=3163
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3154 |
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
| `chromeBrowserPssKb` | {'int': 3154} |
| `chromeGpuPssKb` | {'int': 3154} |
| `chromeOtherPssKb` | {'int': 3154} |
| `chromeProcesses` | {'int': 3154} |
| `chromeProfiles` | {'int': 3154} |
| `chromeRendererMaxPssKb` | {'int': 3154} |
| `chromeRendererPssKb` | {'int': 3154} |
| `chromeRenderers` | {'int': 3154} |
| `chromeTabs` | {'int': 3154} |
| `chromeTabsProbedProfiles` | {'int': 3154} |
| `chromeUtilityPssKb` | {'int': 3154} |
| `desktopPssKb` | {'int': 3154} |
| `hostPssKb` | {'int': 3154} |
| `kind` | {'str': 3154} |
| `memAvailableKb` | {'int': 3154} |
| `memTotalKb` | {'int': 3154} |
| `otherPssKb` | {'int': 3154} |
| `processes` | {'int': 3154} |
| `pssFallbackProcesses` | {'int': 3154} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
