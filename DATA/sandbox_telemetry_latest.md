# sandbox_telemetry_parse — 2026-11-26 01:50:49 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3018809 lines=6687
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6672 |
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
| `chromeBrowserPssKb` | {'int': 6672} |
| `chromeGpuPssKb` | {'int': 6672} |
| `chromeOtherPssKb` | {'int': 6672} |
| `chromeProcesses` | {'int': 6672} |
| `chromeProfiles` | {'int': 6672} |
| `chromeRendererMaxPssKb` | {'int': 6672} |
| `chromeRendererPssKb` | {'int': 6672} |
| `chromeRenderers` | {'int': 6672} |
| `chromeTabs` | {'int': 6672} |
| `chromeTabsProbedProfiles` | {'int': 6672} |
| `chromeUtilityPssKb` | {'int': 6672} |
| `desktopPssKb` | {'int': 6672} |
| `hostPssKb` | {'int': 6672} |
| `kind` | {'str': 6672} |
| `memAvailableKb` | {'int': 6672} |
| `memTotalKb` | {'int': 6672} |
| `otherPssKb` | {'int': 6672} |
| `processes` | {'int': 6672} |
| `pssFallbackProcesses` | {'int': 6672} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
