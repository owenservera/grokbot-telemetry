# sandbox_telemetry_parse — 2026-11-25 12:39:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2759695 lines=6114
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6099 |
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
| `chromeBrowserPssKb` | {'int': 6099} |
| `chromeGpuPssKb` | {'int': 6099} |
| `chromeOtherPssKb` | {'int': 6099} |
| `chromeProcesses` | {'int': 6099} |
| `chromeProfiles` | {'int': 6099} |
| `chromeRendererMaxPssKb` | {'int': 6099} |
| `chromeRendererPssKb` | {'int': 6099} |
| `chromeRenderers` | {'int': 6099} |
| `chromeTabs` | {'int': 6099} |
| `chromeTabsProbedProfiles` | {'int': 6099} |
| `chromeUtilityPssKb` | {'int': 6099} |
| `desktopPssKb` | {'int': 6099} |
| `hostPssKb` | {'int': 6099} |
| `kind` | {'str': 6099} |
| `memAvailableKb` | {'int': 6099} |
| `memTotalKb` | {'int': 6099} |
| `otherPssKb` | {'int': 6099} |
| `processes` | {'int': 6099} |
| `pssFallbackProcesses` | {'int': 6099} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
