# sandbox_telemetry_parse — 2026-11-26 15:43:10 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3317865 lines=7348
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7333 |
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
| `chromeBrowserPssKb` | {'int': 7333} |
| `chromeGpuPssKb` | {'int': 7333} |
| `chromeOtherPssKb` | {'int': 7333} |
| `chromeProcesses` | {'int': 7333} |
| `chromeProfiles` | {'int': 7333} |
| `chromeRendererMaxPssKb` | {'int': 7333} |
| `chromeRendererPssKb` | {'int': 7333} |
| `chromeRenderers` | {'int': 7333} |
| `chromeTabs` | {'int': 7333} |
| `chromeTabsProbedProfiles` | {'int': 7333} |
| `chromeUtilityPssKb` | {'int': 7333} |
| `desktopPssKb` | {'int': 7333} |
| `hostPssKb` | {'int': 7333} |
| `kind` | {'str': 7333} |
| `memAvailableKb` | {'int': 7333} |
| `memTotalKb` | {'int': 7333} |
| `otherPssKb` | {'int': 7333} |
| `processes` | {'int': 7333} |
| `pssFallbackProcesses` | {'int': 7333} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
