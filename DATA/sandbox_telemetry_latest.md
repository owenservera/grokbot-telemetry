# sandbox_telemetry_parse — 2026-11-25 17:14:14 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2847428 lines=6308
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6293 |
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
| `chromeBrowserPssKb` | {'int': 6293} |
| `chromeGpuPssKb` | {'int': 6293} |
| `chromeOtherPssKb` | {'int': 6293} |
| `chromeProcesses` | {'int': 6293} |
| `chromeProfiles` | {'int': 6293} |
| `chromeRendererMaxPssKb` | {'int': 6293} |
| `chromeRendererPssKb` | {'int': 6293} |
| `chromeRenderers` | {'int': 6293} |
| `chromeTabs` | {'int': 6293} |
| `chromeTabsProbedProfiles` | {'int': 6293} |
| `chromeUtilityPssKb` | {'int': 6293} |
| `desktopPssKb` | {'int': 6293} |
| `hostPssKb` | {'int': 6293} |
| `kind` | {'str': 6293} |
| `memAvailableKb` | {'int': 6293} |
| `memTotalKb` | {'int': 6293} |
| `otherPssKb` | {'int': 6293} |
| `processes` | {'int': 6293} |
| `pssFallbackProcesses` | {'int': 6293} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
