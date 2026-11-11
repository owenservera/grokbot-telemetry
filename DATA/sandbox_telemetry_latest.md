# sandbox_telemetry_parse — 2026-11-11 10:38:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1587844 lines=3517
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3508 |
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
| `chromeBrowserPssKb` | {'int': 3508} |
| `chromeGpuPssKb` | {'int': 3508} |
| `chromeOtherPssKb` | {'int': 3508} |
| `chromeProcesses` | {'int': 3508} |
| `chromeProfiles` | {'int': 3508} |
| `chromeRendererMaxPssKb` | {'int': 3508} |
| `chromeRendererPssKb` | {'int': 3508} |
| `chromeRenderers` | {'int': 3508} |
| `chromeTabs` | {'int': 3508} |
| `chromeTabsProbedProfiles` | {'int': 3508} |
| `chromeUtilityPssKb` | {'int': 3508} |
| `desktopPssKb` | {'int': 3508} |
| `hostPssKb` | {'int': 3508} |
| `kind` | {'str': 3508} |
| `memAvailableKb` | {'int': 3508} |
| `memTotalKb` | {'int': 3508} |
| `otherPssKb` | {'int': 3508} |
| `processes` | {'int': 3508} |
| `pssFallbackProcesses` | {'int': 3508} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
