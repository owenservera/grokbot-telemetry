# sandbox_telemetry_parse — 2026-11-28 06:38:04 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=773388 lines=1716
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1708 |
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
| `chromeBrowserPssKb` | {'int': 1708} |
| `chromeGpuPssKb` | {'int': 1708} |
| `chromeOtherPssKb` | {'int': 1708} |
| `chromeProcesses` | {'int': 1708} |
| `chromeProfiles` | {'int': 1708} |
| `chromeRendererMaxPssKb` | {'int': 1708} |
| `chromeRendererPssKb` | {'int': 1708} |
| `chromeRenderers` | {'int': 1708} |
| `chromeTabs` | {'int': 1708} |
| `chromeTabsProbedProfiles` | {'int': 1708} |
| `chromeUtilityPssKb` | {'int': 1708} |
| `desktopPssKb` | {'int': 1708} |
| `hostPssKb` | {'int': 1708} |
| `kind` | {'str': 1708} |
| `memAvailableKb` | {'int': 1708} |
| `memTotalKb` | {'int': 1708} |
| `otherPssKb` | {'int': 1708} |
| `processes` | {'int': 1708} |
| `pssFallbackProcesses` | {'int': 1708} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
