# sandbox_telemetry_parse — 2026-11-20 20:05:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1864291 lines=4133
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4120 |
| `egress_tunnel` | 9 |
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
| `attempt` | {'int': 9} |
| `exitStatus` | {'int': 4} |
| `kind` | {'str': 9} |
| `outcome` | {'str': 9} |
| `runtimeS` | {'int': 4} |

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
| `chromeBrowserPssKb` | {'int': 4120} |
| `chromeGpuPssKb` | {'int': 4120} |
| `chromeOtherPssKb` | {'int': 4120} |
| `chromeProcesses` | {'int': 4120} |
| `chromeProfiles` | {'int': 4120} |
| `chromeRendererMaxPssKb` | {'int': 4120} |
| `chromeRendererPssKb` | {'int': 4120} |
| `chromeRenderers` | {'int': 4120} |
| `chromeTabs` | {'int': 4120} |
| `chromeTabsProbedProfiles` | {'int': 4120} |
| `chromeUtilityPssKb` | {'int': 4120} |
| `desktopPssKb` | {'int': 4120} |
| `hostPssKb` | {'int': 4120} |
| `kind` | {'str': 4120} |
| `memAvailableKb` | {'int': 4120} |
| `memTotalKb` | {'int': 4120} |
| `otherPssKb` | {'int': 4120} |
| `processes` | {'int': 4120} |
| `pssFallbackProcesses` | {'int': 4120} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
