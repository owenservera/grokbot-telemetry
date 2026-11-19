# sandbox_telemetry_parse — 2026-11-19 07:10:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1164240 lines=2582
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2573 |
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
| `chromeBrowserPssKb` | {'int': 2573} |
| `chromeGpuPssKb` | {'int': 2573} |
| `chromeOtherPssKb` | {'int': 2573} |
| `chromeProcesses` | {'int': 2573} |
| `chromeProfiles` | {'int': 2573} |
| `chromeRendererMaxPssKb` | {'int': 2573} |
| `chromeRendererPssKb` | {'int': 2573} |
| `chromeRenderers` | {'int': 2573} |
| `chromeTabs` | {'int': 2573} |
| `chromeTabsProbedProfiles` | {'int': 2573} |
| `chromeUtilityPssKb` | {'int': 2573} |
| `desktopPssKb` | {'int': 2573} |
| `hostPssKb` | {'int': 2573} |
| `kind` | {'str': 2573} |
| `memAvailableKb` | {'int': 2573} |
| `memTotalKb` | {'int': 2573} |
| `otherPssKb` | {'int': 2573} |
| `processes` | {'int': 2573} |
| `pssFallbackProcesses` | {'int': 2573} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
