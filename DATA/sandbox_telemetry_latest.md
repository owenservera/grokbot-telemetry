# sandbox_telemetry_parse — 2026-11-24 16:34:11 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2360723 lines=5232
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5217 |
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
| `chromeBrowserPssKb` | {'int': 5217} |
| `chromeGpuPssKb` | {'int': 5217} |
| `chromeOtherPssKb` | {'int': 5217} |
| `chromeProcesses` | {'int': 5217} |
| `chromeProfiles` | {'int': 5217} |
| `chromeRendererMaxPssKb` | {'int': 5217} |
| `chromeRendererPssKb` | {'int': 5217} |
| `chromeRenderers` | {'int': 5217} |
| `chromeTabs` | {'int': 5217} |
| `chromeTabsProbedProfiles` | {'int': 5217} |
| `chromeUtilityPssKb` | {'int': 5217} |
| `desktopPssKb` | {'int': 5217} |
| `hostPssKb` | {'int': 5217} |
| `kind` | {'str': 5217} |
| `memAvailableKb` | {'int': 5217} |
| `memTotalKb` | {'int': 5217} |
| `otherPssKb` | {'int': 5217} |
| `processes` | {'int': 5217} |
| `pssFallbackProcesses` | {'int': 5217} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
