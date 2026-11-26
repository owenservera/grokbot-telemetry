# sandbox_telemetry_parse — 2026-11-26 01:56:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3021526 lines=6693
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6678 |
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
| `chromeBrowserPssKb` | {'int': 6678} |
| `chromeGpuPssKb` | {'int': 6678} |
| `chromeOtherPssKb` | {'int': 6678} |
| `chromeProcesses` | {'int': 6678} |
| `chromeProfiles` | {'int': 6678} |
| `chromeRendererMaxPssKb` | {'int': 6678} |
| `chromeRendererPssKb` | {'int': 6678} |
| `chromeRenderers` | {'int': 6678} |
| `chromeTabs` | {'int': 6678} |
| `chromeTabsProbedProfiles` | {'int': 6678} |
| `chromeUtilityPssKb` | {'int': 6678} |
| `desktopPssKb` | {'int': 6678} |
| `hostPssKb` | {'int': 6678} |
| `kind` | {'str': 6678} |
| `memAvailableKb` | {'int': 6678} |
| `memTotalKb` | {'int': 6678} |
| `otherPssKb` | {'int': 6678} |
| `processes` | {'int': 6678} |
| `pssFallbackProcesses` | {'int': 6678} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
