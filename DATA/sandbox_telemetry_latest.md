# sandbox_telemetry_parse — 2026-11-12 14:39:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2176639 lines=4818
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4809 |
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
| `chromeBrowserPssKb` | {'int': 4809} |
| `chromeGpuPssKb` | {'int': 4809} |
| `chromeOtherPssKb` | {'int': 4809} |
| `chromeProcesses` | {'int': 4809} |
| `chromeProfiles` | {'int': 4809} |
| `chromeRendererMaxPssKb` | {'int': 4809} |
| `chromeRendererPssKb` | {'int': 4809} |
| `chromeRenderers` | {'int': 4809} |
| `chromeTabs` | {'int': 4809} |
| `chromeTabsProbedProfiles` | {'int': 4809} |
| `chromeUtilityPssKb` | {'int': 4809} |
| `desktopPssKb` | {'int': 4809} |
| `hostPssKb` | {'int': 4809} |
| `kind` | {'str': 4809} |
| `memAvailableKb` | {'int': 4809} |
| `memTotalKb` | {'int': 4809} |
| `otherPssKb` | {'int': 4809} |
| `processes` | {'int': 4809} |
| `pssFallbackProcesses` | {'int': 4809} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
