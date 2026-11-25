# sandbox_telemetry_parse — 2026-11-25 03:42:37 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2576985 lines=5710
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5695 |
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
| `chromeBrowserPssKb` | {'int': 5695} |
| `chromeGpuPssKb` | {'int': 5695} |
| `chromeOtherPssKb` | {'int': 5695} |
| `chromeProcesses` | {'int': 5695} |
| `chromeProfiles` | {'int': 5695} |
| `chromeRendererMaxPssKb` | {'int': 5695} |
| `chromeRendererPssKb` | {'int': 5695} |
| `chromeRenderers` | {'int': 5695} |
| `chromeTabs` | {'int': 5695} |
| `chromeTabsProbedProfiles` | {'int': 5695} |
| `chromeUtilityPssKb` | {'int': 5695} |
| `desktopPssKb` | {'int': 5695} |
| `hostPssKb` | {'int': 5695} |
| `kind` | {'str': 5695} |
| `memAvailableKb` | {'int': 5695} |
| `memTotalKb` | {'int': 5695} |
| `otherPssKb` | {'int': 5695} |
| `processes` | {'int': 5695} |
| `pssFallbackProcesses` | {'int': 5695} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
