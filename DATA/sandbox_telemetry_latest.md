# sandbox_telemetry_parse — 2026-11-25 17:46:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2857372 lines=6330
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6315 |
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
| `chromeBrowserPssKb` | {'int': 6315} |
| `chromeGpuPssKb` | {'int': 6315} |
| `chromeOtherPssKb` | {'int': 6315} |
| `chromeProcesses` | {'int': 6315} |
| `chromeProfiles` | {'int': 6315} |
| `chromeRendererMaxPssKb` | {'int': 6315} |
| `chromeRendererPssKb` | {'int': 6315} |
| `chromeRenderers` | {'int': 6315} |
| `chromeTabs` | {'int': 6315} |
| `chromeTabsProbedProfiles` | {'int': 6315} |
| `chromeUtilityPssKb` | {'int': 6315} |
| `desktopPssKb` | {'int': 6315} |
| `hostPssKb` | {'int': 6315} |
| `kind` | {'str': 6315} |
| `memAvailableKb` | {'int': 6315} |
| `memTotalKb` | {'int': 6315} |
| `otherPssKb` | {'int': 6315} |
| `processes` | {'int': 6315} |
| `pssFallbackProcesses` | {'int': 6315} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
