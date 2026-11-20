# sandbox_telemetry_parse — 2026-11-20 17:47:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1822679 lines=4041
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4028 |
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
| `chromeBrowserPssKb` | {'int': 4028} |
| `chromeGpuPssKb` | {'int': 4028} |
| `chromeOtherPssKb` | {'int': 4028} |
| `chromeProcesses` | {'int': 4028} |
| `chromeProfiles` | {'int': 4028} |
| `chromeRendererMaxPssKb` | {'int': 4028} |
| `chromeRendererPssKb` | {'int': 4028} |
| `chromeRenderers` | {'int': 4028} |
| `chromeTabs` | {'int': 4028} |
| `chromeTabsProbedProfiles` | {'int': 4028} |
| `chromeUtilityPssKb` | {'int': 4028} |
| `desktopPssKb` | {'int': 4028} |
| `hostPssKb` | {'int': 4028} |
| `kind` | {'str': 4028} |
| `memAvailableKb` | {'int': 4028} |
| `memTotalKb` | {'int': 4028} |
| `otherPssKb` | {'int': 4028} |
| `processes` | {'int': 4028} |
| `pssFallbackProcesses` | {'int': 4028} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
