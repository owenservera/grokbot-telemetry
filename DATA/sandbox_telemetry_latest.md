# sandbox_telemetry_parse — 2026-11-24 04:18:37 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2125525 lines=4712
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4697 |
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
| `chromeBrowserPssKb` | {'int': 4697} |
| `chromeGpuPssKb` | {'int': 4697} |
| `chromeOtherPssKb` | {'int': 4697} |
| `chromeProcesses` | {'int': 4697} |
| `chromeProfiles` | {'int': 4697} |
| `chromeRendererMaxPssKb` | {'int': 4697} |
| `chromeRendererPssKb` | {'int': 4697} |
| `chromeRenderers` | {'int': 4697} |
| `chromeTabs` | {'int': 4697} |
| `chromeTabsProbedProfiles` | {'int': 4697} |
| `chromeUtilityPssKb` | {'int': 4697} |
| `desktopPssKb` | {'int': 4697} |
| `hostPssKb` | {'int': 4697} |
| `kind` | {'str': 4697} |
| `memAvailableKb` | {'int': 4697} |
| `memTotalKb` | {'int': 4697} |
| `otherPssKb` | {'int': 4697} |
| `processes` | {'int': 4697} |
| `pssFallbackProcesses` | {'int': 4697} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
