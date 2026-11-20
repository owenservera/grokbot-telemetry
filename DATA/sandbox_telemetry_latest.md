# sandbox_telemetry_parse — 2026-11-20 09:12:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1652428 lines=3663
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3652 |
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
| `chromeBrowserPssKb` | {'int': 3652} |
| `chromeGpuPssKb` | {'int': 3652} |
| `chromeOtherPssKb` | {'int': 3652} |
| `chromeProcesses` | {'int': 3652} |
| `chromeProfiles` | {'int': 3652} |
| `chromeRendererMaxPssKb` | {'int': 3652} |
| `chromeRendererPssKb` | {'int': 3652} |
| `chromeRenderers` | {'int': 3652} |
| `chromeTabs` | {'int': 3652} |
| `chromeTabsProbedProfiles` | {'int': 3652} |
| `chromeUtilityPssKb` | {'int': 3652} |
| `desktopPssKb` | {'int': 3652} |
| `hostPssKb` | {'int': 3652} |
| `kind` | {'str': 3652} |
| `memAvailableKb` | {'int': 3652} |
| `memTotalKb` | {'int': 3652} |
| `otherPssKb` | {'int': 3652} |
| `processes` | {'int': 3652} |
| `pssFallbackProcesses` | {'int': 3652} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
