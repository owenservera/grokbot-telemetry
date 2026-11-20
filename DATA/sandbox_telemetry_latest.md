# sandbox_telemetry_parse — 2026-11-20 11:03:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1687703 lines=3741
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3730 |
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
| `chromeBrowserPssKb` | {'int': 3730} |
| `chromeGpuPssKb` | {'int': 3730} |
| `chromeOtherPssKb` | {'int': 3730} |
| `chromeProcesses` | {'int': 3730} |
| `chromeProfiles` | {'int': 3730} |
| `chromeRendererMaxPssKb` | {'int': 3730} |
| `chromeRendererPssKb` | {'int': 3730} |
| `chromeRenderers` | {'int': 3730} |
| `chromeTabs` | {'int': 3730} |
| `chromeTabsProbedProfiles` | {'int': 3730} |
| `chromeUtilityPssKb` | {'int': 3730} |
| `desktopPssKb` | {'int': 3730} |
| `hostPssKb` | {'int': 3730} |
| `kind` | {'str': 3730} |
| `memAvailableKb` | {'int': 3730} |
| `memTotalKb` | {'int': 3730} |
| `otherPssKb` | {'int': 3730} |
| `processes` | {'int': 3730} |
| `pssFallbackProcesses` | {'int': 3730} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
