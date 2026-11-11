# sandbox_telemetry_parse — 2026-11-11 18:44:18 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1766148 lines=3911
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3902 |
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
| `chromeBrowserPssKb` | {'int': 3902} |
| `chromeGpuPssKb` | {'int': 3902} |
| `chromeOtherPssKb` | {'int': 3902} |
| `chromeProcesses` | {'int': 3902} |
| `chromeProfiles` | {'int': 3902} |
| `chromeRendererMaxPssKb` | {'int': 3902} |
| `chromeRendererPssKb` | {'int': 3902} |
| `chromeRenderers` | {'int': 3902} |
| `chromeTabs` | {'int': 3902} |
| `chromeTabsProbedProfiles` | {'int': 3902} |
| `chromeUtilityPssKb` | {'int': 3902} |
| `desktopPssKb` | {'int': 3902} |
| `hostPssKb` | {'int': 3902} |
| `kind` | {'str': 3902} |
| `memAvailableKb` | {'int': 3902} |
| `memTotalKb` | {'int': 3902} |
| `otherPssKb` | {'int': 3902} |
| `processes` | {'int': 3902} |
| `pssFallbackProcesses` | {'int': 3902} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
