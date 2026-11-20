# sandbox_telemetry_parse — 2026-11-20 07:42:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1623945 lines=3600
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3589 |
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
| `chromeBrowserPssKb` | {'int': 3589} |
| `chromeGpuPssKb` | {'int': 3589} |
| `chromeOtherPssKb` | {'int': 3589} |
| `chromeProcesses` | {'int': 3589} |
| `chromeProfiles` | {'int': 3589} |
| `chromeRendererMaxPssKb` | {'int': 3589} |
| `chromeRendererPssKb` | {'int': 3589} |
| `chromeRenderers` | {'int': 3589} |
| `chromeTabs` | {'int': 3589} |
| `chromeTabsProbedProfiles` | {'int': 3589} |
| `chromeUtilityPssKb` | {'int': 3589} |
| `desktopPssKb` | {'int': 3589} |
| `hostPssKb` | {'int': 3589} |
| `kind` | {'str': 3589} |
| `memAvailableKb` | {'int': 3589} |
| `memTotalKb` | {'int': 3589} |
| `otherPssKb` | {'int': 3589} |
| `processes` | {'int': 3589} |
| `pssFallbackProcesses` | {'int': 3589} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
