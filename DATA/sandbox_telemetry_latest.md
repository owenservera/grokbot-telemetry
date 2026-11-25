# sandbox_telemetry_parse — 2026-11-25 08:12:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2665614 lines=5906
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5891 |
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
| `chromeBrowserPssKb` | {'int': 5891} |
| `chromeGpuPssKb` | {'int': 5891} |
| `chromeOtherPssKb` | {'int': 5891} |
| `chromeProcesses` | {'int': 5891} |
| `chromeProfiles` | {'int': 5891} |
| `chromeRendererMaxPssKb` | {'int': 5891} |
| `chromeRendererPssKb` | {'int': 5891} |
| `chromeRenderers` | {'int': 5891} |
| `chromeTabs` | {'int': 5891} |
| `chromeTabsProbedProfiles` | {'int': 5891} |
| `chromeUtilityPssKb` | {'int': 5891} |
| `desktopPssKb` | {'int': 5891} |
| `hostPssKb` | {'int': 5891} |
| `kind` | {'str': 5891} |
| `memAvailableKb` | {'int': 5891} |
| `memTotalKb` | {'int': 5891} |
| `otherPssKb` | {'int': 5891} |
| `processes` | {'int': 5891} |
| `pssFallbackProcesses` | {'int': 5891} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
