# sandbox_telemetry_parse — 2026-11-11 17:03:34 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1728124 lines=3827
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3818 |
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
| `chromeBrowserPssKb` | {'int': 3818} |
| `chromeGpuPssKb` | {'int': 3818} |
| `chromeOtherPssKb` | {'int': 3818} |
| `chromeProcesses` | {'int': 3818} |
| `chromeProfiles` | {'int': 3818} |
| `chromeRendererMaxPssKb` | {'int': 3818} |
| `chromeRendererPssKb` | {'int': 3818} |
| `chromeRenderers` | {'int': 3818} |
| `chromeTabs` | {'int': 3818} |
| `chromeTabsProbedProfiles` | {'int': 3818} |
| `chromeUtilityPssKb` | {'int': 3818} |
| `desktopPssKb` | {'int': 3818} |
| `hostPssKb` | {'int': 3818} |
| `kind` | {'str': 3818} |
| `memAvailableKb` | {'int': 3818} |
| `memTotalKb` | {'int': 3818} |
| `otherPssKb` | {'int': 3818} |
| `processes` | {'int': 3818} |
| `pssFallbackProcesses` | {'int': 3818} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
