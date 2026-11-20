# sandbox_telemetry_parse — 2026-11-20 13:45:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1740622 lines=3858
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3847 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3847} |
| `chromeGpuPssKb` | {'int': 3847} |
| `chromeOtherPssKb` | {'int': 3847} |
| `chromeProcesses` | {'int': 3847} |
| `chromeProfiles` | {'int': 3847} |
| `chromeRendererMaxPssKb` | {'int': 3847} |
| `chromeRendererPssKb` | {'int': 3847} |
| `chromeRenderers` | {'int': 3847} |
| `chromeTabs` | {'int': 3847} |
| `chromeTabsProbedProfiles` | {'int': 3847} |
| `chromeUtilityPssKb` | {'int': 3847} |
| `desktopPssKb` | {'int': 3847} |
| `hostPssKb` | {'int': 3847} |
| `kind` | {'str': 3847} |
| `memAvailableKb` | {'int': 3847} |
| `memTotalKb` | {'int': 3847} |
| `otherPssKb` | {'int': 3847} |
| `processes` | {'int': 3847} |
| `pssFallbackProcesses` | {'int': 3847} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
