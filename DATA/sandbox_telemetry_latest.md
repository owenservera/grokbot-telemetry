# sandbox_telemetry_parse — 2026-11-26 05:02:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3084405 lines=6832
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6817 |
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
| `chromeBrowserPssKb` | {'int': 6817} |
| `chromeGpuPssKb` | {'int': 6817} |
| `chromeOtherPssKb` | {'int': 6817} |
| `chromeProcesses` | {'int': 6817} |
| `chromeProfiles` | {'int': 6817} |
| `chromeRendererMaxPssKb` | {'int': 6817} |
| `chromeRendererPssKb` | {'int': 6817} |
| `chromeRenderers` | {'int': 6817} |
| `chromeTabs` | {'int': 6817} |
| `chromeTabsProbedProfiles` | {'int': 6817} |
| `chromeUtilityPssKb` | {'int': 6817} |
| `desktopPssKb` | {'int': 6817} |
| `hostPssKb` | {'int': 6817} |
| `kind` | {'str': 6817} |
| `memAvailableKb` | {'int': 6817} |
| `memTotalKb` | {'int': 6817} |
| `otherPssKb` | {'int': 6817} |
| `processes` | {'int': 6817} |
| `pssFallbackProcesses` | {'int': 6817} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
