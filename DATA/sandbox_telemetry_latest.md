# sandbox_telemetry_parse — 2026-11-28 08:22:36 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=805487 lines=1787
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1779 |
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
| `chromeBrowserPssKb` | {'int': 1779} |
| `chromeGpuPssKb` | {'int': 1779} |
| `chromeOtherPssKb` | {'int': 1779} |
| `chromeProcesses` | {'int': 1779} |
| `chromeProfiles` | {'int': 1779} |
| `chromeRendererMaxPssKb` | {'int': 1779} |
| `chromeRendererPssKb` | {'int': 1779} |
| `chromeRenderers` | {'int': 1779} |
| `chromeTabs` | {'int': 1779} |
| `chromeTabsProbedProfiles` | {'int': 1779} |
| `chromeUtilityPssKb` | {'int': 1779} |
| `desktopPssKb` | {'int': 1779} |
| `hostPssKb` | {'int': 1779} |
| `kind` | {'str': 1779} |
| `memAvailableKb` | {'int': 1779} |
| `memTotalKb` | {'int': 1779} |
| `otherPssKb` | {'int': 1779} |
| `processes` | {'int': 1779} |
| `pssFallbackProcesses` | {'int': 1779} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
