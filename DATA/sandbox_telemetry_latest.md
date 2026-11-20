# sandbox_telemetry_parse — 2026-11-20 03:50:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1562470 lines=3464
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3453 |
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
| `chromeBrowserPssKb` | {'int': 3453} |
| `chromeGpuPssKb` | {'int': 3453} |
| `chromeOtherPssKb` | {'int': 3453} |
| `chromeProcesses` | {'int': 3453} |
| `chromeProfiles` | {'int': 3453} |
| `chromeRendererMaxPssKb` | {'int': 3453} |
| `chromeRendererPssKb` | {'int': 3453} |
| `chromeRenderers` | {'int': 3453} |
| `chromeTabs` | {'int': 3453} |
| `chromeTabsProbedProfiles` | {'int': 3453} |
| `chromeUtilityPssKb` | {'int': 3453} |
| `desktopPssKb` | {'int': 3453} |
| `hostPssKb` | {'int': 3453} |
| `kind` | {'str': 3453} |
| `memAvailableKb` | {'int': 3453} |
| `memTotalKb` | {'int': 3453} |
| `otherPssKb` | {'int': 3453} |
| `processes` | {'int': 3453} |
| `pssFallbackProcesses` | {'int': 3453} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
