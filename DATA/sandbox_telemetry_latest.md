# sandbox_telemetry_parse — 2026-11-06 23:05:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=203825 lines=458
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 449 |
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
| `chromeBrowserPssKb` | {'int': 449} |
| `chromeGpuPssKb` | {'int': 449} |
| `chromeOtherPssKb` | {'int': 449} |
| `chromeProcesses` | {'int': 449} |
| `chromeProfiles` | {'int': 449} |
| `chromeRendererMaxPssKb` | {'int': 449} |
| `chromeRendererPssKb` | {'int': 449} |
| `chromeRenderers` | {'int': 449} |
| `chromeTabs` | {'int': 449} |
| `chromeTabsProbedProfiles` | {'int': 449} |
| `chromeUtilityPssKb` | {'int': 449} |
| `desktopPssKb` | {'int': 449} |
| `hostPssKb` | {'int': 449} |
| `kind` | {'str': 449} |
| `memAvailableKb` | {'int': 449} |
| `memTotalKb` | {'int': 449} |
| `otherPssKb` | {'int': 449} |
| `processes` | {'int': 449} |
| `pssFallbackProcesses` | {'int': 449} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
