# sandbox_telemetry_parse — 2026-11-28 14:00:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=916776 lines=2033
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2025 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 2025} |
| `chromeGpuPssKb` | {'int': 2025} |
| `chromeOtherPssKb` | {'int': 2025} |
| `chromeProcesses` | {'int': 2025} |
| `chromeProfiles` | {'int': 2025} |
| `chromeRendererMaxPssKb` | {'int': 2025} |
| `chromeRendererPssKb` | {'int': 2025} |
| `chromeRenderers` | {'int': 2025} |
| `chromeTabs` | {'int': 2025} |
| `chromeTabsProbedProfiles` | {'int': 2025} |
| `chromeUtilityPssKb` | {'int': 2025} |
| `desktopPssKb` | {'int': 2025} |
| `hostPssKb` | {'int': 2025} |
| `kind` | {'str': 2025} |
| `memAvailableKb` | {'int': 2025} |
| `memTotalKb` | {'int': 2025} |
| `otherPssKb` | {'int': 2025} |
| `processes` | {'int': 2025} |
| `pssFallbackProcesses` | {'int': 2025} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
