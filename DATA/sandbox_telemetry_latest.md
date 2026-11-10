# sandbox_telemetry_parse — 2026-11-10 19:02:30 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1275722 lines=2827
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2818 |
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
| `chromeBrowserPssKb` | {'int': 2818} |
| `chromeGpuPssKb` | {'int': 2818} |
| `chromeOtherPssKb` | {'int': 2818} |
| `chromeProcesses` | {'int': 2818} |
| `chromeProfiles` | {'int': 2818} |
| `chromeRendererMaxPssKb` | {'int': 2818} |
| `chromeRendererPssKb` | {'int': 2818} |
| `chromeRenderers` | {'int': 2818} |
| `chromeTabs` | {'int': 2818} |
| `chromeTabsProbedProfiles` | {'int': 2818} |
| `chromeUtilityPssKb` | {'int': 2818} |
| `desktopPssKb` | {'int': 2818} |
| `hostPssKb` | {'int': 2818} |
| `kind` | {'str': 2818} |
| `memAvailableKb` | {'int': 2818} |
| `memTotalKb` | {'int': 2818} |
| `otherPssKb` | {'int': 2818} |
| `processes` | {'int': 2818} |
| `pssFallbackProcesses` | {'int': 2818} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
