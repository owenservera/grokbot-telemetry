# sandbox_telemetry_parse — 2026-11-06 23:14:51 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=207893 lines=467
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 458 |
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
| `chromeBrowserPssKb` | {'int': 458} |
| `chromeGpuPssKb` | {'int': 458} |
| `chromeOtherPssKb` | {'int': 458} |
| `chromeProcesses` | {'int': 458} |
| `chromeProfiles` | {'int': 458} |
| `chromeRendererMaxPssKb` | {'int': 458} |
| `chromeRendererPssKb` | {'int': 458} |
| `chromeRenderers` | {'int': 458} |
| `chromeTabs` | {'int': 458} |
| `chromeTabsProbedProfiles` | {'int': 458} |
| `chromeUtilityPssKb` | {'int': 458} |
| `desktopPssKb` | {'int': 458} |
| `hostPssKb` | {'int': 458} |
| `kind` | {'str': 458} |
| `memAvailableKb` | {'int': 458} |
| `memTotalKb` | {'int': 458} |
| `otherPssKb` | {'int': 458} |
| `processes` | {'int': 458} |
| `pssFallbackProcesses` | {'int': 458} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
