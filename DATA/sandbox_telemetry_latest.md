# sandbox_telemetry_parse — 2026-11-20 07:03:38 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1611740 lines=3573
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3562 |
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
| `chromeBrowserPssKb` | {'int': 3562} |
| `chromeGpuPssKb` | {'int': 3562} |
| `chromeOtherPssKb` | {'int': 3562} |
| `chromeProcesses` | {'int': 3562} |
| `chromeProfiles` | {'int': 3562} |
| `chromeRendererMaxPssKb` | {'int': 3562} |
| `chromeRendererPssKb` | {'int': 3562} |
| `chromeRenderers` | {'int': 3562} |
| `chromeTabs` | {'int': 3562} |
| `chromeTabsProbedProfiles` | {'int': 3562} |
| `chromeUtilityPssKb` | {'int': 3562} |
| `desktopPssKb` | {'int': 3562} |
| `hostPssKb` | {'int': 3562} |
| `kind` | {'str': 3562} |
| `memAvailableKb` | {'int': 3562} |
| `memTotalKb` | {'int': 3562} |
| `otherPssKb` | {'int': 3562} |
| `processes` | {'int': 3562} |
| `pssFallbackProcesses` | {'int': 3562} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
