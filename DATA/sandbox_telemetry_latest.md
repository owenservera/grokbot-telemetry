# sandbox_telemetry_parse — 2026-11-25 21:49:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2936959 lines=6506
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6491 |
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
| `chromeBrowserPssKb` | {'int': 6491} |
| `chromeGpuPssKb` | {'int': 6491} |
| `chromeOtherPssKb` | {'int': 6491} |
| `chromeProcesses` | {'int': 6491} |
| `chromeProfiles` | {'int': 6491} |
| `chromeRendererMaxPssKb` | {'int': 6491} |
| `chromeRendererPssKb` | {'int': 6491} |
| `chromeRenderers` | {'int': 6491} |
| `chromeTabs` | {'int': 6491} |
| `chromeTabsProbedProfiles` | {'int': 6491} |
| `chromeUtilityPssKb` | {'int': 6491} |
| `desktopPssKb` | {'int': 6491} |
| `hostPssKb` | {'int': 6491} |
| `kind` | {'str': 6491} |
| `memAvailableKb` | {'int': 6491} |
| `memTotalKb` | {'int': 6491} |
| `otherPssKb` | {'int': 6491} |
| `processes` | {'int': 6491} |
| `pssFallbackProcesses` | {'int': 6491} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
