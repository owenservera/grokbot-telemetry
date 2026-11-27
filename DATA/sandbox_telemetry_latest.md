# sandbox_telemetry_parse — 2026-11-27 04:30:10 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=237643 lines=532
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 524 |
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
| `chromeBrowserPssKb` | {'int': 524} |
| `chromeGpuPssKb` | {'int': 524} |
| `chromeOtherPssKb` | {'int': 524} |
| `chromeProcesses` | {'int': 524} |
| `chromeProfiles` | {'int': 524} |
| `chromeRendererMaxPssKb` | {'int': 524} |
| `chromeRendererPssKb` | {'int': 524} |
| `chromeRenderers` | {'int': 524} |
| `chromeTabs` | {'int': 524} |
| `chromeTabsProbedProfiles` | {'int': 524} |
| `chromeUtilityPssKb` | {'int': 524} |
| `desktopPssKb` | {'int': 524} |
| `hostPssKb` | {'int': 524} |
| `kind` | {'str': 524} |
| `memAvailableKb` | {'int': 524} |
| `memTotalKb` | {'int': 524} |
| `otherPssKb` | {'int': 524} |
| `processes` | {'int': 524} |
| `pssFallbackProcesses` | {'int': 524} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
