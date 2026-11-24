# sandbox_telemetry_parse — 2026-11-24 01:36:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2076700 lines=4604
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4589 |
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
| `chromeBrowserPssKb` | {'int': 4589} |
| `chromeGpuPssKb` | {'int': 4589} |
| `chromeOtherPssKb` | {'int': 4589} |
| `chromeProcesses` | {'int': 4589} |
| `chromeProfiles` | {'int': 4589} |
| `chromeRendererMaxPssKb` | {'int': 4589} |
| `chromeRendererPssKb` | {'int': 4589} |
| `chromeRenderers` | {'int': 4589} |
| `chromeTabs` | {'int': 4589} |
| `chromeTabsProbedProfiles` | {'int': 4589} |
| `chromeUtilityPssKb` | {'int': 4589} |
| `desktopPssKb` | {'int': 4589} |
| `hostPssKb` | {'int': 4589} |
| `kind` | {'str': 4589} |
| `memAvailableKb` | {'int': 4589} |
| `memTotalKb` | {'int': 4589} |
| `otherPssKb` | {'int': 4589} |
| `processes` | {'int': 4589} |
| `pssFallbackProcesses` | {'int': 4589} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
