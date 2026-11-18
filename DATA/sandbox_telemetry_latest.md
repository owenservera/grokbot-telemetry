# sandbox_telemetry_parse — 2026-11-18 04:15:21 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=672932 lines=1494
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1487 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `chromeBrowserPssKb` | {'int': 1487} |
| `chromeGpuPssKb` | {'int': 1487} |
| `chromeOtherPssKb` | {'int': 1487} |
| `chromeProcesses` | {'int': 1487} |
| `chromeProfiles` | {'int': 1487} |
| `chromeRendererMaxPssKb` | {'int': 1487} |
| `chromeRendererPssKb` | {'int': 1487} |
| `chromeRenderers` | {'int': 1487} |
| `chromeTabs` | {'int': 1487} |
| `chromeTabsProbedProfiles` | {'int': 1487} |
| `chromeUtilityPssKb` | {'int': 1487} |
| `desktopPssKb` | {'int': 1487} |
| `hostPssKb` | {'int': 1487} |
| `kind` | {'str': 1487} |
| `memAvailableKb` | {'int': 1487} |
| `memTotalKb` | {'int': 1487} |
| `otherPssKb` | {'int': 1487} |
| `processes` | {'int': 1487} |
| `pssFallbackProcesses` | {'int': 1487} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
