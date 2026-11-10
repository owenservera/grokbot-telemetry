# sandbox_telemetry_parse — 2026-11-10 01:06:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=916356 lines=2033
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2024 |
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
| `chromeBrowserPssKb` | {'int': 2024} |
| `chromeGpuPssKb` | {'int': 2024} |
| `chromeOtherPssKb` | {'int': 2024} |
| `chromeProcesses` | {'int': 2024} |
| `chromeProfiles` | {'int': 2024} |
| `chromeRendererMaxPssKb` | {'int': 2024} |
| `chromeRendererPssKb` | {'int': 2024} |
| `chromeRenderers` | {'int': 2024} |
| `chromeTabs` | {'int': 2024} |
| `chromeTabsProbedProfiles` | {'int': 2024} |
| `chromeUtilityPssKb` | {'int': 2024} |
| `desktopPssKb` | {'int': 2024} |
| `hostPssKb` | {'int': 2024} |
| `kind` | {'str': 2024} |
| `memAvailableKb` | {'int': 2024} |
| `memTotalKb` | {'int': 2024} |
| `otherPssKb` | {'int': 2024} |
| `processes` | {'int': 2024} |
| `pssFallbackProcesses` | {'int': 2024} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
