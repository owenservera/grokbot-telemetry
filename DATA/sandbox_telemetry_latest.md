# sandbox_telemetry_parse — 2026-11-11 09:48:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1569282 lines=3476
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3467 |
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
| `chromeBrowserPssKb` | {'int': 3467} |
| `chromeGpuPssKb` | {'int': 3467} |
| `chromeOtherPssKb` | {'int': 3467} |
| `chromeProcesses` | {'int': 3467} |
| `chromeProfiles` | {'int': 3467} |
| `chromeRendererMaxPssKb` | {'int': 3467} |
| `chromeRendererPssKb` | {'int': 3467} |
| `chromeRenderers` | {'int': 3467} |
| `chromeTabs` | {'int': 3467} |
| `chromeTabsProbedProfiles` | {'int': 3467} |
| `chromeUtilityPssKb` | {'int': 3467} |
| `desktopPssKb` | {'int': 3467} |
| `hostPssKb` | {'int': 3467} |
| `kind` | {'str': 3467} |
| `memAvailableKb` | {'int': 3467} |
| `memTotalKb` | {'int': 3467} |
| `otherPssKb` | {'int': 3467} |
| `processes` | {'int': 3467} |
| `pssFallbackProcesses` | {'int': 3467} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
