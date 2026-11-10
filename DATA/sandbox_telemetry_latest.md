# sandbox_telemetry_parse — 2026-11-10 10:12:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1092341 lines=2422
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2413 |
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
| `chromeBrowserPssKb` | {'int': 2413} |
| `chromeGpuPssKb` | {'int': 2413} |
| `chromeOtherPssKb` | {'int': 2413} |
| `chromeProcesses` | {'int': 2413} |
| `chromeProfiles` | {'int': 2413} |
| `chromeRendererMaxPssKb` | {'int': 2413} |
| `chromeRendererPssKb` | {'int': 2413} |
| `chromeRenderers` | {'int': 2413} |
| `chromeTabs` | {'int': 2413} |
| `chromeTabsProbedProfiles` | {'int': 2413} |
| `chromeUtilityPssKb` | {'int': 2413} |
| `desktopPssKb` | {'int': 2413} |
| `hostPssKb` | {'int': 2413} |
| `kind` | {'str': 2413} |
| `memAvailableKb` | {'int': 2413} |
| `memTotalKb` | {'int': 2413} |
| `otherPssKb` | {'int': 2413} |
| `processes` | {'int': 2413} |
| `pssFallbackProcesses` | {'int': 2413} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
