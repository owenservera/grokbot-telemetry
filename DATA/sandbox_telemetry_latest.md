# sandbox_telemetry_parse — 2026-11-25 21:49:30 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2937411 lines=6507
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6492 |
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
| `chromeBrowserPssKb` | {'int': 6492} |
| `chromeGpuPssKb` | {'int': 6492} |
| `chromeOtherPssKb` | {'int': 6492} |
| `chromeProcesses` | {'int': 6492} |
| `chromeProfiles` | {'int': 6492} |
| `chromeRendererMaxPssKb` | {'int': 6492} |
| `chromeRendererPssKb` | {'int': 6492} |
| `chromeRenderers` | {'int': 6492} |
| `chromeTabs` | {'int': 6492} |
| `chromeTabsProbedProfiles` | {'int': 6492} |
| `chromeUtilityPssKb` | {'int': 6492} |
| `desktopPssKb` | {'int': 6492} |
| `hostPssKb` | {'int': 6492} |
| `kind` | {'str': 6492} |
| `memAvailableKb` | {'int': 6492} |
| `memTotalKb` | {'int': 6492} |
| `otherPssKb` | {'int': 6492} |
| `processes` | {'int': 6492} |
| `pssFallbackProcesses` | {'int': 6492} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
