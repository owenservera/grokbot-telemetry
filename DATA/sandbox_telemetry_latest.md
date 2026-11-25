# sandbox_telemetry_parse — 2026-11-25 09:02:54 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2684172 lines=5947
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5932 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 5932} |
| `chromeGpuPssKb` | {'int': 5932} |
| `chromeOtherPssKb` | {'int': 5932} |
| `chromeProcesses` | {'int': 5932} |
| `chromeProfiles` | {'int': 5932} |
| `chromeRendererMaxPssKb` | {'int': 5932} |
| `chromeRendererPssKb` | {'int': 5932} |
| `chromeRenderers` | {'int': 5932} |
| `chromeTabs` | {'int': 5932} |
| `chromeTabsProbedProfiles` | {'int': 5932} |
| `chromeUtilityPssKb` | {'int': 5932} |
| `desktopPssKb` | {'int': 5932} |
| `hostPssKb` | {'int': 5932} |
| `kind` | {'str': 5932} |
| `memAvailableKb` | {'int': 5932} |
| `memTotalKb` | {'int': 5932} |
| `otherPssKb` | {'int': 5932} |
| `processes` | {'int': 5932} |
| `pssFallbackProcesses` | {'int': 5932} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
