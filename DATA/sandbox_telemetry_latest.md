# sandbox_telemetry_parse — 2026-11-10 12:17:51 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1131269 lines=2508
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2499 |
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
| `chromeBrowserPssKb` | {'int': 2499} |
| `chromeGpuPssKb` | {'int': 2499} |
| `chromeOtherPssKb` | {'int': 2499} |
| `chromeProcesses` | {'int': 2499} |
| `chromeProfiles` | {'int': 2499} |
| `chromeRendererMaxPssKb` | {'int': 2499} |
| `chromeRendererPssKb` | {'int': 2499} |
| `chromeRenderers` | {'int': 2499} |
| `chromeTabs` | {'int': 2499} |
| `chromeTabsProbedProfiles` | {'int': 2499} |
| `chromeUtilityPssKb` | {'int': 2499} |
| `desktopPssKb` | {'int': 2499} |
| `hostPssKb` | {'int': 2499} |
| `kind` | {'str': 2499} |
| `memAvailableKb` | {'int': 2499} |
| `memTotalKb` | {'int': 2499} |
| `otherPssKb` | {'int': 2499} |
| `processes` | {'int': 2499} |
| `pssFallbackProcesses` | {'int': 2499} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
