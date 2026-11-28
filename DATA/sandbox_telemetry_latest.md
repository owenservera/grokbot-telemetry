# sandbox_telemetry_parse — 2026-11-28 15:50:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=952086 lines=2111
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2103 |
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
| `chromeBrowserPssKb` | {'int': 2103} |
| `chromeGpuPssKb` | {'int': 2103} |
| `chromeOtherPssKb` | {'int': 2103} |
| `chromeProcesses` | {'int': 2103} |
| `chromeProfiles` | {'int': 2103} |
| `chromeRendererMaxPssKb` | {'int': 2103} |
| `chromeRendererPssKb` | {'int': 2103} |
| `chromeRenderers` | {'int': 2103} |
| `chromeTabs` | {'int': 2103} |
| `chromeTabsProbedProfiles` | {'int': 2103} |
| `chromeUtilityPssKb` | {'int': 2103} |
| `desktopPssKb` | {'int': 2103} |
| `hostPssKb` | {'int': 2103} |
| `kind` | {'str': 2103} |
| `memAvailableKb` | {'int': 2103} |
| `memTotalKb` | {'int': 2103} |
| `otherPssKb` | {'int': 2103} |
| `processes` | {'int': 2103} |
| `pssFallbackProcesses` | {'int': 2103} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
