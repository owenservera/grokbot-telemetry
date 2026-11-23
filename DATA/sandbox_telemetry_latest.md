# sandbox_telemetry_parse — 2026-11-24 00:04:17 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2047306 lines=4539
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4524 |
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
| `chromeBrowserPssKb` | {'int': 4524} |
| `chromeGpuPssKb` | {'int': 4524} |
| `chromeOtherPssKb` | {'int': 4524} |
| `chromeProcesses` | {'int': 4524} |
| `chromeProfiles` | {'int': 4524} |
| `chromeRendererMaxPssKb` | {'int': 4524} |
| `chromeRendererPssKb` | {'int': 4524} |
| `chromeRenderers` | {'int': 4524} |
| `chromeTabs` | {'int': 4524} |
| `chromeTabsProbedProfiles` | {'int': 4524} |
| `chromeUtilityPssKb` | {'int': 4524} |
| `desktopPssKb` | {'int': 4524} |
| `hostPssKb` | {'int': 4524} |
| `kind` | {'str': 4524} |
| `memAvailableKb` | {'int': 4524} |
| `memTotalKb` | {'int': 4524} |
| `otherPssKb` | {'int': 4524} |
| `processes` | {'int': 4524} |
| `pssFallbackProcesses` | {'int': 4524} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
