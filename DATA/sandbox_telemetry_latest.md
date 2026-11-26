# sandbox_telemetry_parse — 2026-11-26 06:24:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3117896 lines=6906
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6891 |
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
| `chromeBrowserPssKb` | {'int': 6891} |
| `chromeGpuPssKb` | {'int': 6891} |
| `chromeOtherPssKb` | {'int': 6891} |
| `chromeProcesses` | {'int': 6891} |
| `chromeProfiles` | {'int': 6891} |
| `chromeRendererMaxPssKb` | {'int': 6891} |
| `chromeRendererPssKb` | {'int': 6891} |
| `chromeRenderers` | {'int': 6891} |
| `chromeTabs` | {'int': 6891} |
| `chromeTabsProbedProfiles` | {'int': 6891} |
| `chromeUtilityPssKb` | {'int': 6891} |
| `desktopPssKb` | {'int': 6891} |
| `hostPssKb` | {'int': 6891} |
| `kind` | {'str': 6891} |
| `memAvailableKb` | {'int': 6891} |
| `memTotalKb` | {'int': 6891} |
| `otherPssKb` | {'int': 6891} |
| `processes` | {'int': 6891} |
| `pssFallbackProcesses` | {'int': 6891} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
