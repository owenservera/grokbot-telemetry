# sandbox_telemetry_parse — 2026-11-23 15:53:38 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1899758 lines=4213
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4198 |
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
| `chromeBrowserPssKb` | {'int': 4198} |
| `chromeGpuPssKb` | {'int': 4198} |
| `chromeOtherPssKb` | {'int': 4198} |
| `chromeProcesses` | {'int': 4198} |
| `chromeProfiles` | {'int': 4198} |
| `chromeRendererMaxPssKb` | {'int': 4198} |
| `chromeRendererPssKb` | {'int': 4198} |
| `chromeRenderers` | {'int': 4198} |
| `chromeTabs` | {'int': 4198} |
| `chromeTabsProbedProfiles` | {'int': 4198} |
| `chromeUtilityPssKb` | {'int': 4198} |
| `desktopPssKb` | {'int': 4198} |
| `hostPssKb` | {'int': 4198} |
| `kind` | {'str': 4198} |
| `memAvailableKb` | {'int': 4198} |
| `memTotalKb` | {'int': 4198} |
| `otherPssKb` | {'int': 4198} |
| `processes` | {'int': 4198} |
| `pssFallbackProcesses` | {'int': 4198} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
