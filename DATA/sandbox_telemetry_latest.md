# sandbox_telemetry_parse — 2026-11-12 17:01:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2232358 lines=4941
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4932 |
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
| `chromeBrowserPssKb` | {'int': 4932} |
| `chromeGpuPssKb` | {'int': 4932} |
| `chromeOtherPssKb` | {'int': 4932} |
| `chromeProcesses` | {'int': 4932} |
| `chromeProfiles` | {'int': 4932} |
| `chromeRendererMaxPssKb` | {'int': 4932} |
| `chromeRendererPssKb` | {'int': 4932} |
| `chromeRenderers` | {'int': 4932} |
| `chromeTabs` | {'int': 4932} |
| `chromeTabsProbedProfiles` | {'int': 4932} |
| `chromeUtilityPssKb` | {'int': 4932} |
| `desktopPssKb` | {'int': 4932} |
| `hostPssKb` | {'int': 4932} |
| `kind` | {'str': 4932} |
| `memAvailableKb` | {'int': 4932} |
| `memTotalKb` | {'int': 4932} |
| `otherPssKb` | {'int': 4932} |
| `processes` | {'int': 4932} |
| `pssFallbackProcesses` | {'int': 4932} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
