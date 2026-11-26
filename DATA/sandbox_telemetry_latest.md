# sandbox_telemetry_parse — 2026-11-26 11:16:38 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3227858 lines=7149
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7134 |
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
| `chromeBrowserPssKb` | {'int': 7134} |
| `chromeGpuPssKb` | {'int': 7134} |
| `chromeOtherPssKb` | {'int': 7134} |
| `chromeProcesses` | {'int': 7134} |
| `chromeProfiles` | {'int': 7134} |
| `chromeRendererMaxPssKb` | {'int': 7134} |
| `chromeRendererPssKb` | {'int': 7134} |
| `chromeRenderers` | {'int': 7134} |
| `chromeTabs` | {'int': 7134} |
| `chromeTabsProbedProfiles` | {'int': 7134} |
| `chromeUtilityPssKb` | {'int': 7134} |
| `desktopPssKb` | {'int': 7134} |
| `hostPssKb` | {'int': 7134} |
| `kind` | {'str': 7134} |
| `memAvailableKb` | {'int': 7134} |
| `memTotalKb` | {'int': 7134} |
| `otherPssKb` | {'int': 7134} |
| `processes` | {'int': 7134} |
| `pssFallbackProcesses` | {'int': 7134} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
