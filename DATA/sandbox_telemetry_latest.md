# sandbox_telemetry_parse — 2026-11-11 04:32:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1472058 lines=3261
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3252 |
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
| `chromeBrowserPssKb` | {'int': 3252} |
| `chromeGpuPssKb` | {'int': 3252} |
| `chromeOtherPssKb` | {'int': 3252} |
| `chromeProcesses` | {'int': 3252} |
| `chromeProfiles` | {'int': 3252} |
| `chromeRendererMaxPssKb` | {'int': 3252} |
| `chromeRendererPssKb` | {'int': 3252} |
| `chromeRenderers` | {'int': 3252} |
| `chromeTabs` | {'int': 3252} |
| `chromeTabsProbedProfiles` | {'int': 3252} |
| `chromeUtilityPssKb` | {'int': 3252} |
| `desktopPssKb` | {'int': 3252} |
| `hostPssKb` | {'int': 3252} |
| `kind` | {'str': 3252} |
| `memAvailableKb` | {'int': 3252} |
| `memTotalKb` | {'int': 3252} |
| `otherPssKb` | {'int': 3252} |
| `processes` | {'int': 3252} |
| `pssFallbackProcesses` | {'int': 3252} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
