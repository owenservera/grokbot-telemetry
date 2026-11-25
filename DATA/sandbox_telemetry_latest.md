# sandbox_telemetry_parse — 2026-11-25 16:25:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2831597 lines=6273
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6258 |
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
| `chromeBrowserPssKb` | {'int': 6258} |
| `chromeGpuPssKb` | {'int': 6258} |
| `chromeOtherPssKb` | {'int': 6258} |
| `chromeProcesses` | {'int': 6258} |
| `chromeProfiles` | {'int': 6258} |
| `chromeRendererMaxPssKb` | {'int': 6258} |
| `chromeRendererPssKb` | {'int': 6258} |
| `chromeRenderers` | {'int': 6258} |
| `chromeTabs` | {'int': 6258} |
| `chromeTabsProbedProfiles` | {'int': 6258} |
| `chromeUtilityPssKb` | {'int': 6258} |
| `desktopPssKb` | {'int': 6258} |
| `hostPssKb` | {'int': 6258} |
| `kind` | {'str': 6258} |
| `memAvailableKb` | {'int': 6258} |
| `memTotalKb` | {'int': 6258} |
| `otherPssKb` | {'int': 6258} |
| `processes` | {'int': 6258} |
| `pssFallbackProcesses` | {'int': 6258} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
