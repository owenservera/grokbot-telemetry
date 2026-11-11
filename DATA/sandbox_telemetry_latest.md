# sandbox_telemetry_parse — 2026-11-11 04:36:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1473414 lines=3264
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3255 |
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
| `chromeBrowserPssKb` | {'int': 3255} |
| `chromeGpuPssKb` | {'int': 3255} |
| `chromeOtherPssKb` | {'int': 3255} |
| `chromeProcesses` | {'int': 3255} |
| `chromeProfiles` | {'int': 3255} |
| `chromeRendererMaxPssKb` | {'int': 3255} |
| `chromeRendererPssKb` | {'int': 3255} |
| `chromeRenderers` | {'int': 3255} |
| `chromeTabs` | {'int': 3255} |
| `chromeTabsProbedProfiles` | {'int': 3255} |
| `chromeUtilityPssKb` | {'int': 3255} |
| `desktopPssKb` | {'int': 3255} |
| `hostPssKb` | {'int': 3255} |
| `kind` | {'str': 3255} |
| `memAvailableKb` | {'int': 3255} |
| `memTotalKb` | {'int': 3255} |
| `otherPssKb` | {'int': 3255} |
| `processes` | {'int': 3255} |
| `pssFallbackProcesses` | {'int': 3255} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
