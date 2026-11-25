# sandbox_telemetry_parse — 2026-11-26 00:02:04 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2985350 lines=6613
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6598 |
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
| `chromeBrowserPssKb` | {'int': 6598} |
| `chromeGpuPssKb` | {'int': 6598} |
| `chromeOtherPssKb` | {'int': 6598} |
| `chromeProcesses` | {'int': 6598} |
| `chromeProfiles` | {'int': 6598} |
| `chromeRendererMaxPssKb` | {'int': 6598} |
| `chromeRendererPssKb` | {'int': 6598} |
| `chromeRenderers` | {'int': 6598} |
| `chromeTabs` | {'int': 6598} |
| `chromeTabsProbedProfiles` | {'int': 6598} |
| `chromeUtilityPssKb` | {'int': 6598} |
| `desktopPssKb` | {'int': 6598} |
| `hostPssKb` | {'int': 6598} |
| `kind` | {'str': 6598} |
| `memAvailableKb` | {'int': 6598} |
| `memTotalKb` | {'int': 6598} |
| `otherPssKb` | {'int': 6598} |
| `processes` | {'int': 6598} |
| `pssFallbackProcesses` | {'int': 6598} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
