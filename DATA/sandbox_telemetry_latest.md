# sandbox_telemetry_parse — 2026-11-11 07:23:21 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1523608 lines=3375
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3366 |
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
| `chromeBrowserPssKb` | {'int': 3366} |
| `chromeGpuPssKb` | {'int': 3366} |
| `chromeOtherPssKb` | {'int': 3366} |
| `chromeProcesses` | {'int': 3366} |
| `chromeProfiles` | {'int': 3366} |
| `chromeRendererMaxPssKb` | {'int': 3366} |
| `chromeRendererPssKb` | {'int': 3366} |
| `chromeRenderers` | {'int': 3366} |
| `chromeTabs` | {'int': 3366} |
| `chromeTabsProbedProfiles` | {'int': 3366} |
| `chromeUtilityPssKb` | {'int': 3366} |
| `desktopPssKb` | {'int': 3366} |
| `hostPssKb` | {'int': 3366} |
| `kind` | {'str': 3366} |
| `memAvailableKb` | {'int': 3366} |
| `memTotalKb` | {'int': 3366} |
| `otherPssKb` | {'int': 3366} |
| `processes` | {'int': 3366} |
| `pssFallbackProcesses` | {'int': 3366} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
