# sandbox_telemetry_parse — 2026-11-26 11:26:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3230118 lines=7154
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7139 |
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
| `chromeBrowserPssKb` | {'int': 7139} |
| `chromeGpuPssKb` | {'int': 7139} |
| `chromeOtherPssKb` | {'int': 7139} |
| `chromeProcesses` | {'int': 7139} |
| `chromeProfiles` | {'int': 7139} |
| `chromeRendererMaxPssKb` | {'int': 7139} |
| `chromeRendererPssKb` | {'int': 7139} |
| `chromeRenderers` | {'int': 7139} |
| `chromeTabs` | {'int': 7139} |
| `chromeTabsProbedProfiles` | {'int': 7139} |
| `chromeUtilityPssKb` | {'int': 7139} |
| `desktopPssKb` | {'int': 7139} |
| `hostPssKb` | {'int': 7139} |
| `kind` | {'str': 7139} |
| `memAvailableKb` | {'int': 7139} |
| `memTotalKb` | {'int': 7139} |
| `otherPssKb` | {'int': 7139} |
| `processes` | {'int': 7139} |
| `pssFallbackProcesses` | {'int': 7139} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
