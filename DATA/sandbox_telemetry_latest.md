# sandbox_telemetry_parse — 2026-11-20 06:00:37 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1595014 lines=3536
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3525 |
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
| `chromeBrowserPssKb` | {'int': 3525} |
| `chromeGpuPssKb` | {'int': 3525} |
| `chromeOtherPssKb` | {'int': 3525} |
| `chromeProcesses` | {'int': 3525} |
| `chromeProfiles` | {'int': 3525} |
| `chromeRendererMaxPssKb` | {'int': 3525} |
| `chromeRendererPssKb` | {'int': 3525} |
| `chromeRenderers` | {'int': 3525} |
| `chromeTabs` | {'int': 3525} |
| `chromeTabsProbedProfiles` | {'int': 3525} |
| `chromeUtilityPssKb` | {'int': 3525} |
| `desktopPssKb` | {'int': 3525} |
| `hostPssKb` | {'int': 3525} |
| `kind` | {'str': 3525} |
| `memAvailableKb` | {'int': 3525} |
| `memTotalKb` | {'int': 3525} |
| `otherPssKb` | {'int': 3525} |
| `processes` | {'int': 3525} |
| `pssFallbackProcesses` | {'int': 3525} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
