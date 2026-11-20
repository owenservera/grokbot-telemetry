# sandbox_telemetry_parse — 2026-11-20 07:21:37 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1616713 lines=3584
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3573 |
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
| `chromeBrowserPssKb` | {'int': 3573} |
| `chromeGpuPssKb` | {'int': 3573} |
| `chromeOtherPssKb` | {'int': 3573} |
| `chromeProcesses` | {'int': 3573} |
| `chromeProfiles` | {'int': 3573} |
| `chromeRendererMaxPssKb` | {'int': 3573} |
| `chromeRendererPssKb` | {'int': 3573} |
| `chromeRenderers` | {'int': 3573} |
| `chromeTabs` | {'int': 3573} |
| `chromeTabsProbedProfiles` | {'int': 3573} |
| `chromeUtilityPssKb` | {'int': 3573} |
| `desktopPssKb` | {'int': 3573} |
| `hostPssKb` | {'int': 3573} |
| `kind` | {'str': 3573} |
| `memAvailableKb` | {'int': 3573} |
| `memTotalKb` | {'int': 3573} |
| `otherPssKb` | {'int': 3573} |
| `processes` | {'int': 3573} |
| `pssFallbackProcesses` | {'int': 3573} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
