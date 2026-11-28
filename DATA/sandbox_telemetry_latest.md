# sandbox_telemetry_parse — 2026-11-28 18:02:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=996471 lines=2209
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2201 |
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
| `chromeBrowserPssKb` | {'int': 2201} |
| `chromeGpuPssKb` | {'int': 2201} |
| `chromeOtherPssKb` | {'int': 2201} |
| `chromeProcesses` | {'int': 2201} |
| `chromeProfiles` | {'int': 2201} |
| `chromeRendererMaxPssKb` | {'int': 2201} |
| `chromeRendererPssKb` | {'int': 2201} |
| `chromeRenderers` | {'int': 2201} |
| `chromeTabs` | {'int': 2201} |
| `chromeTabsProbedProfiles` | {'int': 2201} |
| `chromeUtilityPssKb` | {'int': 2201} |
| `desktopPssKb` | {'int': 2201} |
| `hostPssKb` | {'int': 2201} |
| `kind` | {'str': 2201} |
| `memAvailableKb` | {'int': 2201} |
| `memTotalKb` | {'int': 2201} |
| `otherPssKb` | {'int': 2201} |
| `processes` | {'int': 2201} |
| `pssFallbackProcesses` | {'int': 2201} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
