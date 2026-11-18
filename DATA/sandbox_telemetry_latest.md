# sandbox_telemetry_parse — 2026-11-18 06:42:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=719062 lines=1596
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1589 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 1589} |
| `chromeGpuPssKb` | {'int': 1589} |
| `chromeOtherPssKb` | {'int': 1589} |
| `chromeProcesses` | {'int': 1589} |
| `chromeProfiles` | {'int': 1589} |
| `chromeRendererMaxPssKb` | {'int': 1589} |
| `chromeRendererPssKb` | {'int': 1589} |
| `chromeRenderers` | {'int': 1589} |
| `chromeTabs` | {'int': 1589} |
| `chromeTabsProbedProfiles` | {'int': 1589} |
| `chromeUtilityPssKb` | {'int': 1589} |
| `desktopPssKb` | {'int': 1589} |
| `hostPssKb` | {'int': 1589} |
| `kind` | {'str': 1589} |
| `memAvailableKb` | {'int': 1589} |
| `memTotalKb` | {'int': 1589} |
| `otherPssKb` | {'int': 1589} |
| `processes` | {'int': 1589} |
| `pssFallbackProcesses` | {'int': 1589} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
