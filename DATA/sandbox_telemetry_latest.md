# sandbox_telemetry_parse — 2026-11-18 21:00:14 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=974765 lines=2163
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2154 |
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
| `chromeBrowserPssKb` | {'int': 2154} |
| `chromeGpuPssKb` | {'int': 2154} |
| `chromeOtherPssKb` | {'int': 2154} |
| `chromeProcesses` | {'int': 2154} |
| `chromeProfiles` | {'int': 2154} |
| `chromeRendererMaxPssKb` | {'int': 2154} |
| `chromeRendererPssKb` | {'int': 2154} |
| `chromeRenderers` | {'int': 2154} |
| `chromeTabs` | {'int': 2154} |
| `chromeTabsProbedProfiles` | {'int': 2154} |
| `chromeUtilityPssKb` | {'int': 2154} |
| `desktopPssKb` | {'int': 2154} |
| `hostPssKb` | {'int': 2154} |
| `kind` | {'str': 2154} |
| `memAvailableKb` | {'int': 2154} |
| `memTotalKb` | {'int': 2154} |
| `otherPssKb` | {'int': 2154} |
| `processes` | {'int': 2154} |
| `pssFallbackProcesses` | {'int': 2154} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
