# sandbox_telemetry_parse — 2026-11-26 03:03:10 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3043240 lines=6741
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6726 |
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
| `chromeBrowserPssKb` | {'int': 6726} |
| `chromeGpuPssKb` | {'int': 6726} |
| `chromeOtherPssKb` | {'int': 6726} |
| `chromeProcesses` | {'int': 6726} |
| `chromeProfiles` | {'int': 6726} |
| `chromeRendererMaxPssKb` | {'int': 6726} |
| `chromeRendererPssKb` | {'int': 6726} |
| `chromeRenderers` | {'int': 6726} |
| `chromeTabs` | {'int': 6726} |
| `chromeTabsProbedProfiles` | {'int': 6726} |
| `chromeUtilityPssKb` | {'int': 6726} |
| `desktopPssKb` | {'int': 6726} |
| `hostPssKb` | {'int': 6726} |
| `kind` | {'str': 6726} |
| `memAvailableKb` | {'int': 6726} |
| `memTotalKb` | {'int': 6726} |
| `otherPssKb` | {'int': 6726} |
| `processes` | {'int': 6726} |
| `pssFallbackProcesses` | {'int': 6726} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
