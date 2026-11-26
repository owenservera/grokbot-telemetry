# sandbox_telemetry_parse — 2026-11-26 05:23:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3093463 lines=6852
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6837 |
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
| `chromeBrowserPssKb` | {'int': 6837} |
| `chromeGpuPssKb` | {'int': 6837} |
| `chromeOtherPssKb` | {'int': 6837} |
| `chromeProcesses` | {'int': 6837} |
| `chromeProfiles` | {'int': 6837} |
| `chromeRendererMaxPssKb` | {'int': 6837} |
| `chromeRendererPssKb` | {'int': 6837} |
| `chromeRenderers` | {'int': 6837} |
| `chromeTabs` | {'int': 6837} |
| `chromeTabsProbedProfiles` | {'int': 6837} |
| `chromeUtilityPssKb` | {'int': 6837} |
| `desktopPssKb` | {'int': 6837} |
| `hostPssKb` | {'int': 6837} |
| `kind` | {'str': 6837} |
| `memAvailableKb` | {'int': 6837} |
| `memTotalKb` | {'int': 6837} |
| `otherPssKb` | {'int': 6837} |
| `processes` | {'int': 6837} |
| `pssFallbackProcesses` | {'int': 6837} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
