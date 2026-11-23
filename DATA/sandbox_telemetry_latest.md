# sandbox_telemetry_parse — 2026-11-23 23:36:37 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2038718 lines=4520
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4505 |
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
| `chromeBrowserPssKb` | {'int': 4505} |
| `chromeGpuPssKb` | {'int': 4505} |
| `chromeOtherPssKb` | {'int': 4505} |
| `chromeProcesses` | {'int': 4505} |
| `chromeProfiles` | {'int': 4505} |
| `chromeRendererMaxPssKb` | {'int': 4505} |
| `chromeRendererPssKb` | {'int': 4505} |
| `chromeRenderers` | {'int': 4505} |
| `chromeTabs` | {'int': 4505} |
| `chromeTabsProbedProfiles` | {'int': 4505} |
| `chromeUtilityPssKb` | {'int': 4505} |
| `desktopPssKb` | {'int': 4505} |
| `hostPssKb` | {'int': 4505} |
| `kind` | {'str': 4505} |
| `memAvailableKb` | {'int': 4505} |
| `memTotalKb` | {'int': 4505} |
| `otherPssKb` | {'int': 4505} |
| `processes` | {'int': 4505} |
| `pssFallbackProcesses` | {'int': 4505} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
