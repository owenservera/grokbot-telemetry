# sandbox_telemetry_parse — 2026-11-18 17:45:41 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=915504 lines=2032
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2023 |
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
| `chromeBrowserPssKb` | {'int': 2023} |
| `chromeGpuPssKb` | {'int': 2023} |
| `chromeOtherPssKb` | {'int': 2023} |
| `chromeProcesses` | {'int': 2023} |
| `chromeProfiles` | {'int': 2023} |
| `chromeRendererMaxPssKb` | {'int': 2023} |
| `chromeRendererPssKb` | {'int': 2023} |
| `chromeRenderers` | {'int': 2023} |
| `chromeTabs` | {'int': 2023} |
| `chromeTabsProbedProfiles` | {'int': 2023} |
| `chromeUtilityPssKb` | {'int': 2023} |
| `desktopPssKb` | {'int': 2023} |
| `hostPssKb` | {'int': 2023} |
| `kind` | {'str': 2023} |
| `memAvailableKb` | {'int': 2023} |
| `memTotalKb` | {'int': 2023} |
| `otherPssKb` | {'int': 2023} |
| `processes` | {'int': 2023} |
| `pssFallbackProcesses` | {'int': 2023} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
