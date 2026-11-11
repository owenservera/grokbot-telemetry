# sandbox_telemetry_parse — 2026-11-11 10:07:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1576975 lines=3493
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3484 |
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
| `chromeBrowserPssKb` | {'int': 3484} |
| `chromeGpuPssKb` | {'int': 3484} |
| `chromeOtherPssKb` | {'int': 3484} |
| `chromeProcesses` | {'int': 3484} |
| `chromeProfiles` | {'int': 3484} |
| `chromeRendererMaxPssKb` | {'int': 3484} |
| `chromeRendererPssKb` | {'int': 3484} |
| `chromeRenderers` | {'int': 3484} |
| `chromeTabs` | {'int': 3484} |
| `chromeTabsProbedProfiles` | {'int': 3484} |
| `chromeUtilityPssKb` | {'int': 3484} |
| `desktopPssKb` | {'int': 3484} |
| `hostPssKb` | {'int': 3484} |
| `kind` | {'str': 3484} |
| `memAvailableKb` | {'int': 3484} |
| `memTotalKb` | {'int': 3484} |
| `otherPssKb` | {'int': 3484} |
| `processes` | {'int': 3484} |
| `pssFallbackProcesses` | {'int': 3484} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
