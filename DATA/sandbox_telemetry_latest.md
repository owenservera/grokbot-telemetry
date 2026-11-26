# sandbox_telemetry_parse — 2026-11-26 11:41:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3233734 lines=7162
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7147 |
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
| `chromeBrowserPssKb` | {'int': 7147} |
| `chromeGpuPssKb` | {'int': 7147} |
| `chromeOtherPssKb` | {'int': 7147} |
| `chromeProcesses` | {'int': 7147} |
| `chromeProfiles` | {'int': 7147} |
| `chromeRendererMaxPssKb` | {'int': 7147} |
| `chromeRendererPssKb` | {'int': 7147} |
| `chromeRenderers` | {'int': 7147} |
| `chromeTabs` | {'int': 7147} |
| `chromeTabsProbedProfiles` | {'int': 7147} |
| `chromeUtilityPssKb` | {'int': 7147} |
| `desktopPssKb` | {'int': 7147} |
| `hostPssKb` | {'int': 7147} |
| `kind` | {'str': 7147} |
| `memAvailableKb` | {'int': 7147} |
| `memTotalKb` | {'int': 7147} |
| `otherPssKb` | {'int': 7147} |
| `processes` | {'int': 7147} |
| `pssFallbackProcesses` | {'int': 7147} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
