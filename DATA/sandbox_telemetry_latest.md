# sandbox_telemetry_parse — 2026-11-25 01:44:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2540366 lines=5629
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5614 |
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
| `chromeBrowserPssKb` | {'int': 5614} |
| `chromeGpuPssKb` | {'int': 5614} |
| `chromeOtherPssKb` | {'int': 5614} |
| `chromeProcesses` | {'int': 5614} |
| `chromeProfiles` | {'int': 5614} |
| `chromeRendererMaxPssKb` | {'int': 5614} |
| `chromeRendererPssKb` | {'int': 5614} |
| `chromeRenderers` | {'int': 5614} |
| `chromeTabs` | {'int': 5614} |
| `chromeTabsProbedProfiles` | {'int': 5614} |
| `chromeUtilityPssKb` | {'int': 5614} |
| `desktopPssKb` | {'int': 5614} |
| `hostPssKb` | {'int': 5614} |
| `kind` | {'str': 5614} |
| `memAvailableKb` | {'int': 5614} |
| `memTotalKb` | {'int': 5614} |
| `otherPssKb` | {'int': 5614} |
| `processes` | {'int': 5614} |
| `pssFallbackProcesses` | {'int': 5614} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
