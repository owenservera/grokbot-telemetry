# sandbox_telemetry_parse — 2026-11-19 11:21:34 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1248809 lines=2769
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2760 |
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
| `chromeBrowserPssKb` | {'int': 2760} |
| `chromeGpuPssKb` | {'int': 2760} |
| `chromeOtherPssKb` | {'int': 2760} |
| `chromeProcesses` | {'int': 2760} |
| `chromeProfiles` | {'int': 2760} |
| `chromeRendererMaxPssKb` | {'int': 2760} |
| `chromeRendererPssKb` | {'int': 2760} |
| `chromeRenderers` | {'int': 2760} |
| `chromeTabs` | {'int': 2760} |
| `chromeTabsProbedProfiles` | {'int': 2760} |
| `chromeUtilityPssKb` | {'int': 2760} |
| `desktopPssKb` | {'int': 2760} |
| `hostPssKb` | {'int': 2760} |
| `kind` | {'str': 2760} |
| `memAvailableKb` | {'int': 2760} |
| `memTotalKb` | {'int': 2760} |
| `otherPssKb` | {'int': 2760} |
| `processes` | {'int': 2760} |
| `pssFallbackProcesses` | {'int': 2760} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
