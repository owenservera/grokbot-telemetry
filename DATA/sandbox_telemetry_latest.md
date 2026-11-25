# sandbox_telemetry_parse — 2026-11-25 01:02:05 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2529066 lines=5604
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5589 |
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
| `chromeBrowserPssKb` | {'int': 5589} |
| `chromeGpuPssKb` | {'int': 5589} |
| `chromeOtherPssKb` | {'int': 5589} |
| `chromeProcesses` | {'int': 5589} |
| `chromeProfiles` | {'int': 5589} |
| `chromeRendererMaxPssKb` | {'int': 5589} |
| `chromeRendererPssKb` | {'int': 5589} |
| `chromeRenderers` | {'int': 5589} |
| `chromeTabs` | {'int': 5589} |
| `chromeTabsProbedProfiles` | {'int': 5589} |
| `chromeUtilityPssKb` | {'int': 5589} |
| `desktopPssKb` | {'int': 5589} |
| `hostPssKb` | {'int': 5589} |
| `kind` | {'str': 5589} |
| `memAvailableKb` | {'int': 5589} |
| `memTotalKb` | {'int': 5589} |
| `otherPssKb` | {'int': 5589} |
| `processes` | {'int': 5589} |
| `pssFallbackProcesses` | {'int': 5589} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
