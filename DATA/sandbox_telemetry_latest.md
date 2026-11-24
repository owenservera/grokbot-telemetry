# sandbox_telemetry_parse — 2026-11-24 22:23:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2475709 lines=5486
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5471 |
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
| `chromeBrowserPssKb` | {'int': 5471} |
| `chromeGpuPssKb` | {'int': 5471} |
| `chromeOtherPssKb` | {'int': 5471} |
| `chromeProcesses` | {'int': 5471} |
| `chromeProfiles` | {'int': 5471} |
| `chromeRendererMaxPssKb` | {'int': 5471} |
| `chromeRendererPssKb` | {'int': 5471} |
| `chromeRenderers` | {'int': 5471} |
| `chromeTabs` | {'int': 5471} |
| `chromeTabsProbedProfiles` | {'int': 5471} |
| `chromeUtilityPssKb` | {'int': 5471} |
| `desktopPssKb` | {'int': 5471} |
| `hostPssKb` | {'int': 5471} |
| `kind` | {'str': 5471} |
| `memAvailableKb` | {'int': 5471} |
| `memTotalKb` | {'int': 5471} |
| `otherPssKb` | {'int': 5471} |
| `processes` | {'int': 5471} |
| `pssFallbackProcesses` | {'int': 5471} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
