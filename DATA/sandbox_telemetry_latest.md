# sandbox_telemetry_parse — 2026-11-10 23:00:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1365324 lines=3025
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3016 |
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
| `chromeBrowserPssKb` | {'int': 3016} |
| `chromeGpuPssKb` | {'int': 3016} |
| `chromeOtherPssKb` | {'int': 3016} |
| `chromeProcesses` | {'int': 3016} |
| `chromeProfiles` | {'int': 3016} |
| `chromeRendererMaxPssKb` | {'int': 3016} |
| `chromeRendererPssKb` | {'int': 3016} |
| `chromeRenderers` | {'int': 3016} |
| `chromeTabs` | {'int': 3016} |
| `chromeTabsProbedProfiles` | {'int': 3016} |
| `chromeUtilityPssKb` | {'int': 3016} |
| `desktopPssKb` | {'int': 3016} |
| `hostPssKb` | {'int': 3016} |
| `kind` | {'str': 3016} |
| `memAvailableKb` | {'int': 3016} |
| `memTotalKb` | {'int': 3016} |
| `otherPssKb` | {'int': 3016} |
| `processes` | {'int': 3016} |
| `pssFallbackProcesses` | {'int': 3016} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
