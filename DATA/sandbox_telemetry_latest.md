# sandbox_telemetry_parse — 2026-11-09 15:54:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=729006 lines=1619
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1610 |
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
| `chromeBrowserPssKb` | {'int': 1610} |
| `chromeGpuPssKb` | {'int': 1610} |
| `chromeOtherPssKb` | {'int': 1610} |
| `chromeProcesses` | {'int': 1610} |
| `chromeProfiles` | {'int': 1610} |
| `chromeRendererMaxPssKb` | {'int': 1610} |
| `chromeRendererPssKb` | {'int': 1610} |
| `chromeRenderers` | {'int': 1610} |
| `chromeTabs` | {'int': 1610} |
| `chromeTabsProbedProfiles` | {'int': 1610} |
| `chromeUtilityPssKb` | {'int': 1610} |
| `desktopPssKb` | {'int': 1610} |
| `hostPssKb` | {'int': 1610} |
| `kind` | {'str': 1610} |
| `memAvailableKb` | {'int': 1610} |
| `memTotalKb` | {'int': 1610} |
| `otherPssKb` | {'int': 1610} |
| `processes` | {'int': 1610} |
| `pssFallbackProcesses` | {'int': 1610} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
