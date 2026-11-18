# sandbox_telemetry_parse — 2026-11-18 07:55:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=737594 lines=1637
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1630 |
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
| `chromeBrowserPssKb` | {'int': 1630} |
| `chromeGpuPssKb` | {'int': 1630} |
| `chromeOtherPssKb` | {'int': 1630} |
| `chromeProcesses` | {'int': 1630} |
| `chromeProfiles` | {'int': 1630} |
| `chromeRendererMaxPssKb` | {'int': 1630} |
| `chromeRendererPssKb` | {'int': 1630} |
| `chromeRenderers` | {'int': 1630} |
| `chromeTabs` | {'int': 1630} |
| `chromeTabsProbedProfiles` | {'int': 1630} |
| `chromeUtilityPssKb` | {'int': 1630} |
| `desktopPssKb` | {'int': 1630} |
| `hostPssKb` | {'int': 1630} |
| `kind` | {'str': 1630} |
| `memAvailableKb` | {'int': 1630} |
| `memTotalKb` | {'int': 1630} |
| `otherPssKb` | {'int': 1630} |
| `processes` | {'int': 1630} |
| `pssFallbackProcesses` | {'int': 1630} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
