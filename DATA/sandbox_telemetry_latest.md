# sandbox_telemetry_parse — 2026-11-25 13:50:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2781857 lines=6163
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6148 |
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
| `chromeBrowserPssKb` | {'int': 6148} |
| `chromeGpuPssKb` | {'int': 6148} |
| `chromeOtherPssKb` | {'int': 6148} |
| `chromeProcesses` | {'int': 6148} |
| `chromeProfiles` | {'int': 6148} |
| `chromeRendererMaxPssKb` | {'int': 6148} |
| `chromeRendererPssKb` | {'int': 6148} |
| `chromeRenderers` | {'int': 6148} |
| `chromeTabs` | {'int': 6148} |
| `chromeTabsProbedProfiles` | {'int': 6148} |
| `chromeUtilityPssKb` | {'int': 6148} |
| `desktopPssKb` | {'int': 6148} |
| `hostPssKb` | {'int': 6148} |
| `kind` | {'str': 6148} |
| `memAvailableKb` | {'int': 6148} |
| `memTotalKb` | {'int': 6148} |
| `otherPssKb` | {'int': 6148} |
| `processes` | {'int': 6148} |
| `pssFallbackProcesses` | {'int': 6148} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
