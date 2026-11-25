# sandbox_telemetry_parse — 2026-11-25 01:16:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2532230 lines=5611
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5596 |
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
| `chromeBrowserPssKb` | {'int': 5596} |
| `chromeGpuPssKb` | {'int': 5596} |
| `chromeOtherPssKb` | {'int': 5596} |
| `chromeProcesses` | {'int': 5596} |
| `chromeProfiles` | {'int': 5596} |
| `chromeRendererMaxPssKb` | {'int': 5596} |
| `chromeRendererPssKb` | {'int': 5596} |
| `chromeRenderers` | {'int': 5596} |
| `chromeTabs` | {'int': 5596} |
| `chromeTabsProbedProfiles` | {'int': 5596} |
| `chromeUtilityPssKb` | {'int': 5596} |
| `desktopPssKb` | {'int': 5596} |
| `hostPssKb` | {'int': 5596} |
| `kind` | {'str': 5596} |
| `memAvailableKb` | {'int': 5596} |
| `memTotalKb` | {'int': 5596} |
| `otherPssKb` | {'int': 5596} |
| `processes` | {'int': 5596} |
| `pssFallbackProcesses` | {'int': 5596} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
