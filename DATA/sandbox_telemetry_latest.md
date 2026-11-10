# sandbox_telemetry_parse — 2026-11-10 14:16:32 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1176104 lines=2607
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2598 |
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
| `chromeBrowserPssKb` | {'int': 2598} |
| `chromeGpuPssKb` | {'int': 2598} |
| `chromeOtherPssKb` | {'int': 2598} |
| `chromeProcesses` | {'int': 2598} |
| `chromeProfiles` | {'int': 2598} |
| `chromeRendererMaxPssKb` | {'int': 2598} |
| `chromeRendererPssKb` | {'int': 2598} |
| `chromeRenderers` | {'int': 2598} |
| `chromeTabs` | {'int': 2598} |
| `chromeTabsProbedProfiles` | {'int': 2598} |
| `chromeUtilityPssKb` | {'int': 2598} |
| `desktopPssKb` | {'int': 2598} |
| `hostPssKb` | {'int': 2598} |
| `kind` | {'str': 2598} |
| `memAvailableKb` | {'int': 2598} |
| `memTotalKb` | {'int': 2598} |
| `otherPssKb` | {'int': 2598} |
| `processes` | {'int': 2598} |
| `pssFallbackProcesses` | {'int': 2598} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
