# sandbox_telemetry_parse — 2026-11-11 05:34:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1490148 lines=3301
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3292 |
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
| `chromeBrowserPssKb` | {'int': 3292} |
| `chromeGpuPssKb` | {'int': 3292} |
| `chromeOtherPssKb` | {'int': 3292} |
| `chromeProcesses` | {'int': 3292} |
| `chromeProfiles` | {'int': 3292} |
| `chromeRendererMaxPssKb` | {'int': 3292} |
| `chromeRendererPssKb` | {'int': 3292} |
| `chromeRenderers` | {'int': 3292} |
| `chromeTabs` | {'int': 3292} |
| `chromeTabsProbedProfiles` | {'int': 3292} |
| `chromeUtilityPssKb` | {'int': 3292} |
| `desktopPssKb` | {'int': 3292} |
| `hostPssKb` | {'int': 3292} |
| `kind` | {'str': 3292} |
| `memAvailableKb` | {'int': 3292} |
| `memTotalKb` | {'int': 3292} |
| `otherPssKb` | {'int': 3292} |
| `processes` | {'int': 3292} |
| `pssFallbackProcesses` | {'int': 3292} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
