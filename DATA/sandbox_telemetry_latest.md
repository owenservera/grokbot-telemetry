# sandbox_telemetry_parse — 2026-11-25 14:48:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2799035 lines=6201
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6186 |
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
| `chromeBrowserPssKb` | {'int': 6186} |
| `chromeGpuPssKb` | {'int': 6186} |
| `chromeOtherPssKb` | {'int': 6186} |
| `chromeProcesses` | {'int': 6186} |
| `chromeProfiles` | {'int': 6186} |
| `chromeRendererMaxPssKb` | {'int': 6186} |
| `chromeRendererPssKb` | {'int': 6186} |
| `chromeRenderers` | {'int': 6186} |
| `chromeTabs` | {'int': 6186} |
| `chromeTabsProbedProfiles` | {'int': 6186} |
| `chromeUtilityPssKb` | {'int': 6186} |
| `desktopPssKb` | {'int': 6186} |
| `hostPssKb` | {'int': 6186} |
| `kind` | {'str': 6186} |
| `memAvailableKb` | {'int': 6186} |
| `memTotalKb` | {'int': 6186} |
| `otherPssKb` | {'int': 6186} |
| `processes` | {'int': 6186} |
| `pssFallbackProcesses` | {'int': 6186} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
