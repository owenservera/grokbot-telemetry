# sandbox_telemetry_parse — 2026-11-27 21:30:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=598729 lines=1330
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1322 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 1322} |
| `chromeGpuPssKb` | {'int': 1322} |
| `chromeOtherPssKb` | {'int': 1322} |
| `chromeProcesses` | {'int': 1322} |
| `chromeProfiles` | {'int': 1322} |
| `chromeRendererMaxPssKb` | {'int': 1322} |
| `chromeRendererPssKb` | {'int': 1322} |
| `chromeRenderers` | {'int': 1322} |
| `chromeTabs` | {'int': 1322} |
| `chromeTabsProbedProfiles` | {'int': 1322} |
| `chromeUtilityPssKb` | {'int': 1322} |
| `desktopPssKb` | {'int': 1322} |
| `hostPssKb` | {'int': 1322} |
| `kind` | {'str': 1322} |
| `memAvailableKb` | {'int': 1322} |
| `memTotalKb` | {'int': 1322} |
| `otherPssKb` | {'int': 1322} |
| `processes` | {'int': 1322} |
| `pssFallbackProcesses` | {'int': 1322} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
