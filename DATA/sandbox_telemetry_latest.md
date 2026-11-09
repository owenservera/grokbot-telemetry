# sandbox_telemetry_parse — 2026-11-09 18:50:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=796503 lines=1768
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1759 |
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
| `chromeBrowserPssKb` | {'int': 1759} |
| `chromeGpuPssKb` | {'int': 1759} |
| `chromeOtherPssKb` | {'int': 1759} |
| `chromeProcesses` | {'int': 1759} |
| `chromeProfiles` | {'int': 1759} |
| `chromeRendererMaxPssKb` | {'int': 1759} |
| `chromeRendererPssKb` | {'int': 1759} |
| `chromeRenderers` | {'int': 1759} |
| `chromeTabs` | {'int': 1759} |
| `chromeTabsProbedProfiles` | {'int': 1759} |
| `chromeUtilityPssKb` | {'int': 1759} |
| `desktopPssKb` | {'int': 1759} |
| `hostPssKb` | {'int': 1759} |
| `kind` | {'str': 1759} |
| `memAvailableKb` | {'int': 1759} |
| `memTotalKb` | {'int': 1759} |
| `otherPssKb` | {'int': 1759} |
| `processes` | {'int': 1759} |
| `pssFallbackProcesses` | {'int': 1759} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
