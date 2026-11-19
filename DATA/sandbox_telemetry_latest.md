# sandbox_telemetry_parse — 2026-11-19 05:39:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1141640 lines=2532
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2523 |
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
| `chromeBrowserPssKb` | {'int': 2523} |
| `chromeGpuPssKb` | {'int': 2523} |
| `chromeOtherPssKb` | {'int': 2523} |
| `chromeProcesses` | {'int': 2523} |
| `chromeProfiles` | {'int': 2523} |
| `chromeRendererMaxPssKb` | {'int': 2523} |
| `chromeRendererPssKb` | {'int': 2523} |
| `chromeRenderers` | {'int': 2523} |
| `chromeTabs` | {'int': 2523} |
| `chromeTabsProbedProfiles` | {'int': 2523} |
| `chromeUtilityPssKb` | {'int': 2523} |
| `desktopPssKb` | {'int': 2523} |
| `hostPssKb` | {'int': 2523} |
| `kind` | {'str': 2523} |
| `memAvailableKb` | {'int': 2523} |
| `memTotalKb` | {'int': 2523} |
| `otherPssKb` | {'int': 2523} |
| `processes` | {'int': 2523} |
| `pssFallbackProcesses` | {'int': 2523} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
