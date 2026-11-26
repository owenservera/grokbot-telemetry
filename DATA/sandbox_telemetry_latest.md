# sandbox_telemetry_parse — 2026-11-26 10:34:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3212920 lines=7116
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7101 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 7101} |
| `chromeGpuPssKb` | {'int': 7101} |
| `chromeOtherPssKb` | {'int': 7101} |
| `chromeProcesses` | {'int': 7101} |
| `chromeProfiles` | {'int': 7101} |
| `chromeRendererMaxPssKb` | {'int': 7101} |
| `chromeRendererPssKb` | {'int': 7101} |
| `chromeRenderers` | {'int': 7101} |
| `chromeTabs` | {'int': 7101} |
| `chromeTabsProbedProfiles` | {'int': 7101} |
| `chromeUtilityPssKb` | {'int': 7101} |
| `desktopPssKb` | {'int': 7101} |
| `hostPssKb` | {'int': 7101} |
| `kind` | {'str': 7101} |
| `memAvailableKb` | {'int': 7101} |
| `memTotalKb` | {'int': 7101} |
| `otherPssKb` | {'int': 7101} |
| `processes` | {'int': 7101} |
| `pssFallbackProcesses` | {'int': 7101} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
