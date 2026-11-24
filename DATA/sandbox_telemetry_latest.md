# sandbox_telemetry_parse — 2026-11-24 15:48:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2347593 lines=5203
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5188 |
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
| `chromeBrowserPssKb` | {'int': 5188} |
| `chromeGpuPssKb` | {'int': 5188} |
| `chromeOtherPssKb` | {'int': 5188} |
| `chromeProcesses` | {'int': 5188} |
| `chromeProfiles` | {'int': 5188} |
| `chromeRendererMaxPssKb` | {'int': 5188} |
| `chromeRendererPssKb` | {'int': 5188} |
| `chromeRenderers` | {'int': 5188} |
| `chromeTabs` | {'int': 5188} |
| `chromeTabsProbedProfiles` | {'int': 5188} |
| `chromeUtilityPssKb` | {'int': 5188} |
| `desktopPssKb` | {'int': 5188} |
| `hostPssKb` | {'int': 5188} |
| `kind` | {'str': 5188} |
| `memAvailableKb` | {'int': 5188} |
| `memTotalKb` | {'int': 5188} |
| `otherPssKb` | {'int': 5188} |
| `processes` | {'int': 5188} |
| `pssFallbackProcesses` | {'int': 5188} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
