# sandbox_telemetry_parse — 2026-11-26 02:54:54 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3040524 lines=6735
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6720 |
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
| `chromeBrowserPssKb` | {'int': 6720} |
| `chromeGpuPssKb` | {'int': 6720} |
| `chromeOtherPssKb` | {'int': 6720} |
| `chromeProcesses` | {'int': 6720} |
| `chromeProfiles` | {'int': 6720} |
| `chromeRendererMaxPssKb` | {'int': 6720} |
| `chromeRendererPssKb` | {'int': 6720} |
| `chromeRenderers` | {'int': 6720} |
| `chromeTabs` | {'int': 6720} |
| `chromeTabsProbedProfiles` | {'int': 6720} |
| `chromeUtilityPssKb` | {'int': 6720} |
| `desktopPssKb` | {'int': 6720} |
| `hostPssKb` | {'int': 6720} |
| `kind` | {'str': 6720} |
| `memAvailableKb` | {'int': 6720} |
| `memTotalKb` | {'int': 6720} |
| `otherPssKb` | {'int': 6720} |
| `processes` | {'int': 6720} |
| `pssFallbackProcesses` | {'int': 6720} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
