# sandbox_telemetry_parse — 2026-11-11 21:05:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1815030 lines=4019
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4010 |
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
| `chromeBrowserPssKb` | {'int': 4010} |
| `chromeGpuPssKb` | {'int': 4010} |
| `chromeOtherPssKb` | {'int': 4010} |
| `chromeProcesses` | {'int': 4010} |
| `chromeProfiles` | {'int': 4010} |
| `chromeRendererMaxPssKb` | {'int': 4010} |
| `chromeRendererPssKb` | {'int': 4010} |
| `chromeRenderers` | {'int': 4010} |
| `chromeTabs` | {'int': 4010} |
| `chromeTabsProbedProfiles` | {'int': 4010} |
| `chromeUtilityPssKb` | {'int': 4010} |
| `desktopPssKb` | {'int': 4010} |
| `hostPssKb` | {'int': 4010} |
| `kind` | {'str': 4010} |
| `memAvailableKb` | {'int': 4010} |
| `memTotalKb` | {'int': 4010} |
| `otherPssKb` | {'int': 4010} |
| `processes` | {'int': 4010} |
| `pssFallbackProcesses` | {'int': 4010} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
