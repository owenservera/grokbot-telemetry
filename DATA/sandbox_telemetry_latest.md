# sandbox_telemetry_parse — 2026-11-19 11:21:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1248357 lines=2768
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2759 |
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
| `chromeBrowserPssKb` | {'int': 2759} |
| `chromeGpuPssKb` | {'int': 2759} |
| `chromeOtherPssKb` | {'int': 2759} |
| `chromeProcesses` | {'int': 2759} |
| `chromeProfiles` | {'int': 2759} |
| `chromeRendererMaxPssKb` | {'int': 2759} |
| `chromeRendererPssKb` | {'int': 2759} |
| `chromeRenderers` | {'int': 2759} |
| `chromeTabs` | {'int': 2759} |
| `chromeTabsProbedProfiles` | {'int': 2759} |
| `chromeUtilityPssKb` | {'int': 2759} |
| `desktopPssKb` | {'int': 2759} |
| `hostPssKb` | {'int': 2759} |
| `kind` | {'str': 2759} |
| `memAvailableKb` | {'int': 2759} |
| `memTotalKb` | {'int': 2759} |
| `otherPssKb` | {'int': 2759} |
| `processes` | {'int': 2759} |
| `pssFallbackProcesses` | {'int': 2759} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
