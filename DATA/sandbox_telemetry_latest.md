# sandbox_telemetry_parse — 2026-11-26 06:21:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3116537 lines=6903
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6888 |
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
| `chromeBrowserPssKb` | {'int': 6888} |
| `chromeGpuPssKb` | {'int': 6888} |
| `chromeOtherPssKb` | {'int': 6888} |
| `chromeProcesses` | {'int': 6888} |
| `chromeProfiles` | {'int': 6888} |
| `chromeRendererMaxPssKb` | {'int': 6888} |
| `chromeRendererPssKb` | {'int': 6888} |
| `chromeRenderers` | {'int': 6888} |
| `chromeTabs` | {'int': 6888} |
| `chromeTabsProbedProfiles` | {'int': 6888} |
| `chromeUtilityPssKb` | {'int': 6888} |
| `desktopPssKb` | {'int': 6888} |
| `hostPssKb` | {'int': 6888} |
| `kind` | {'str': 6888} |
| `memAvailableKb` | {'int': 6888} |
| `memTotalKb` | {'int': 6888} |
| `otherPssKb` | {'int': 6888} |
| `processes` | {'int': 6888} |
| `pssFallbackProcesses` | {'int': 6888} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
