# sandbox_telemetry_parse — 2026-11-24 20:57:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2446758 lines=5422
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5407 |
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
| `chromeBrowserPssKb` | {'int': 5407} |
| `chromeGpuPssKb` | {'int': 5407} |
| `chromeOtherPssKb` | {'int': 5407} |
| `chromeProcesses` | {'int': 5407} |
| `chromeProfiles` | {'int': 5407} |
| `chromeRendererMaxPssKb` | {'int': 5407} |
| `chromeRendererPssKb` | {'int': 5407} |
| `chromeRenderers` | {'int': 5407} |
| `chromeTabs` | {'int': 5407} |
| `chromeTabsProbedProfiles` | {'int': 5407} |
| `chromeUtilityPssKb` | {'int': 5407} |
| `desktopPssKb` | {'int': 5407} |
| `hostPssKb` | {'int': 5407} |
| `kind` | {'str': 5407} |
| `memAvailableKb` | {'int': 5407} |
| `memTotalKb` | {'int': 5407} |
| `otherPssKb` | {'int': 5407} |
| `processes` | {'int': 5407} |
| `pssFallbackProcesses` | {'int': 5407} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
