# sandbox_telemetry_parse — 2026-11-25 04:41:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2597791 lines=5756
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5741 |
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
| `chromeBrowserPssKb` | {'int': 5741} |
| `chromeGpuPssKb` | {'int': 5741} |
| `chromeOtherPssKb` | {'int': 5741} |
| `chromeProcesses` | {'int': 5741} |
| `chromeProfiles` | {'int': 5741} |
| `chromeRendererMaxPssKb` | {'int': 5741} |
| `chromeRendererPssKb` | {'int': 5741} |
| `chromeRenderers` | {'int': 5741} |
| `chromeTabs` | {'int': 5741} |
| `chromeTabsProbedProfiles` | {'int': 5741} |
| `chromeUtilityPssKb` | {'int': 5741} |
| `desktopPssKb` | {'int': 5741} |
| `hostPssKb` | {'int': 5741} |
| `kind` | {'str': 5741} |
| `memAvailableKb` | {'int': 5741} |
| `memTotalKb` | {'int': 5741} |
| `otherPssKb` | {'int': 5741} |
| `processes` | {'int': 5741} |
| `pssFallbackProcesses` | {'int': 5741} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
