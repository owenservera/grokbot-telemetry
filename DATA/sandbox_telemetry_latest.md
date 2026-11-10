# sandbox_telemetry_parse — 2026-11-10 15:32:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1202800 lines=2666
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2657 |
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
| `chromeBrowserPssKb` | {'int': 2657} |
| `chromeGpuPssKb` | {'int': 2657} |
| `chromeOtherPssKb` | {'int': 2657} |
| `chromeProcesses` | {'int': 2657} |
| `chromeProfiles` | {'int': 2657} |
| `chromeRendererMaxPssKb` | {'int': 2657} |
| `chromeRendererPssKb` | {'int': 2657} |
| `chromeRenderers` | {'int': 2657} |
| `chromeTabs` | {'int': 2657} |
| `chromeTabsProbedProfiles` | {'int': 2657} |
| `chromeUtilityPssKb` | {'int': 2657} |
| `desktopPssKb` | {'int': 2657} |
| `hostPssKb` | {'int': 2657} |
| `kind` | {'str': 2657} |
| `memAvailableKb` | {'int': 2657} |
| `memTotalKb` | {'int': 2657} |
| `otherPssKb` | {'int': 2657} |
| `processes` | {'int': 2657} |
| `pssFallbackProcesses` | {'int': 2657} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
