# sandbox_telemetry_parse — 2026-11-20 05:30:51 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1588234 lines=3521
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3510 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3510} |
| `chromeGpuPssKb` | {'int': 3510} |
| `chromeOtherPssKb` | {'int': 3510} |
| `chromeProcesses` | {'int': 3510} |
| `chromeProfiles` | {'int': 3510} |
| `chromeRendererMaxPssKb` | {'int': 3510} |
| `chromeRendererPssKb` | {'int': 3510} |
| `chromeRenderers` | {'int': 3510} |
| `chromeTabs` | {'int': 3510} |
| `chromeTabsProbedProfiles` | {'int': 3510} |
| `chromeUtilityPssKb` | {'int': 3510} |
| `desktopPssKb` | {'int': 3510} |
| `hostPssKb` | {'int': 3510} |
| `kind` | {'str': 3510} |
| `memAvailableKb` | {'int': 3510} |
| `memTotalKb` | {'int': 3510} |
| `otherPssKb` | {'int': 3510} |
| `processes` | {'int': 3510} |
| `pssFallbackProcesses` | {'int': 3510} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
