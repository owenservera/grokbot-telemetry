# sandbox_telemetry_parse — 2026-11-10 12:44:29 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1141235 lines=2530
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2521 |
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
| `chromeBrowserPssKb` | {'int': 2521} |
| `chromeGpuPssKb` | {'int': 2521} |
| `chromeOtherPssKb` | {'int': 2521} |
| `chromeProcesses` | {'int': 2521} |
| `chromeProfiles` | {'int': 2521} |
| `chromeRendererMaxPssKb` | {'int': 2521} |
| `chromeRendererPssKb` | {'int': 2521} |
| `chromeRenderers` | {'int': 2521} |
| `chromeTabs` | {'int': 2521} |
| `chromeTabsProbedProfiles` | {'int': 2521} |
| `chromeUtilityPssKb` | {'int': 2521} |
| `desktopPssKb` | {'int': 2521} |
| `hostPssKb` | {'int': 2521} |
| `kind` | {'str': 2521} |
| `memAvailableKb` | {'int': 2521} |
| `memTotalKb` | {'int': 2521} |
| `otherPssKb` | {'int': 2521} |
| `processes` | {'int': 2521} |
| `pssFallbackProcesses` | {'int': 2521} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
