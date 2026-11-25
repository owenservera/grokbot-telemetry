# sandbox_telemetry_parse — 2026-11-25 11:56:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2747038 lines=6086
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6071 |
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
| `chromeBrowserPssKb` | {'int': 6071} |
| `chromeGpuPssKb` | {'int': 6071} |
| `chromeOtherPssKb` | {'int': 6071} |
| `chromeProcesses` | {'int': 6071} |
| `chromeProfiles` | {'int': 6071} |
| `chromeRendererMaxPssKb` | {'int': 6071} |
| `chromeRendererPssKb` | {'int': 6071} |
| `chromeRenderers` | {'int': 6071} |
| `chromeTabs` | {'int': 6071} |
| `chromeTabsProbedProfiles` | {'int': 6071} |
| `chromeUtilityPssKb` | {'int': 6071} |
| `desktopPssKb` | {'int': 6071} |
| `hostPssKb` | {'int': 6071} |
| `kind` | {'str': 6071} |
| `memAvailableKb` | {'int': 6071} |
| `memTotalKb` | {'int': 6071} |
| `otherPssKb` | {'int': 6071} |
| `processes` | {'int': 6071} |
| `pssFallbackProcesses` | {'int': 6071} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
