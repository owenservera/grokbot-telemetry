# sandbox_telemetry_parse — 2026-11-12 01:18:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1905565 lines=4219
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4210 |
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
| `chromeBrowserPssKb` | {'int': 4210} |
| `chromeGpuPssKb` | {'int': 4210} |
| `chromeOtherPssKb` | {'int': 4210} |
| `chromeProcesses` | {'int': 4210} |
| `chromeProfiles` | {'int': 4210} |
| `chromeRendererMaxPssKb` | {'int': 4210} |
| `chromeRendererPssKb` | {'int': 4210} |
| `chromeRenderers` | {'int': 4210} |
| `chromeTabs` | {'int': 4210} |
| `chromeTabsProbedProfiles` | {'int': 4210} |
| `chromeUtilityPssKb` | {'int': 4210} |
| `desktopPssKb` | {'int': 4210} |
| `hostPssKb` | {'int': 4210} |
| `kind` | {'str': 4210} |
| `memAvailableKb` | {'int': 4210} |
| `memTotalKb` | {'int': 4210} |
| `otherPssKb` | {'int': 4210} |
| `processes` | {'int': 4210} |
| `pssFallbackProcesses` | {'int': 4210} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
