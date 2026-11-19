# sandbox_telemetry_parse — 2026-11-19 20:02:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1421840 lines=3153
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3142 |
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
| `chromeBrowserPssKb` | {'int': 3142} |
| `chromeGpuPssKb` | {'int': 3142} |
| `chromeOtherPssKb` | {'int': 3142} |
| `chromeProcesses` | {'int': 3142} |
| `chromeProfiles` | {'int': 3142} |
| `chromeRendererMaxPssKb` | {'int': 3142} |
| `chromeRendererPssKb` | {'int': 3142} |
| `chromeRenderers` | {'int': 3142} |
| `chromeTabs` | {'int': 3142} |
| `chromeTabsProbedProfiles` | {'int': 3142} |
| `chromeUtilityPssKb` | {'int': 3142} |
| `desktopPssKb` | {'int': 3142} |
| `hostPssKb` | {'int': 3142} |
| `kind` | {'str': 3142} |
| `memAvailableKb` | {'int': 3142} |
| `memTotalKb` | {'int': 3142} |
| `otherPssKb` | {'int': 3142} |
| `processes` | {'int': 3142} |
| `pssFallbackProcesses` | {'int': 3142} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
