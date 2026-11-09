# sandbox_telemetry_parse — 2026-11-09 16:10:14 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=734895 lines=1632
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1623 |
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
| `chromeBrowserPssKb` | {'int': 1623} |
| `chromeGpuPssKb` | {'int': 1623} |
| `chromeOtherPssKb` | {'int': 1623} |
| `chromeProcesses` | {'int': 1623} |
| `chromeProfiles` | {'int': 1623} |
| `chromeRendererMaxPssKb` | {'int': 1623} |
| `chromeRendererPssKb` | {'int': 1623} |
| `chromeRenderers` | {'int': 1623} |
| `chromeTabs` | {'int': 1623} |
| `chromeTabsProbedProfiles` | {'int': 1623} |
| `chromeUtilityPssKb` | {'int': 1623} |
| `desktopPssKb` | {'int': 1623} |
| `hostPssKb` | {'int': 1623} |
| `kind` | {'str': 1623} |
| `memAvailableKb` | {'int': 1623} |
| `memTotalKb` | {'int': 1623} |
| `otherPssKb` | {'int': 1623} |
| `processes` | {'int': 1623} |
| `pssFallbackProcesses` | {'int': 1623} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
