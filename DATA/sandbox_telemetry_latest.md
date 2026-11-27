# sandbox_telemetry_parse — 2026-11-27 12:52:19 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=422185 lines=940
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 932 |
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
| `chromeBrowserPssKb` | {'int': 932} |
| `chromeGpuPssKb` | {'int': 932} |
| `chromeOtherPssKb` | {'int': 932} |
| `chromeProcesses` | {'int': 932} |
| `chromeProfiles` | {'int': 932} |
| `chromeRendererMaxPssKb` | {'int': 932} |
| `chromeRendererPssKb` | {'int': 932} |
| `chromeRenderers` | {'int': 932} |
| `chromeTabs` | {'int': 932} |
| `chromeTabsProbedProfiles` | {'int': 932} |
| `chromeUtilityPssKb` | {'int': 932} |
| `desktopPssKb` | {'int': 932} |
| `hostPssKb` | {'int': 932} |
| `kind` | {'str': 932} |
| `memAvailableKb` | {'int': 932} |
| `memTotalKb` | {'int': 932} |
| `otherPssKb` | {'int': 932} |
| `processes` | {'int': 932} |
| `pssFallbackProcesses` | {'int': 932} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
