# sandbox_telemetry_parse — 2026-11-20 17:25:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1814987 lines=4024
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4011 |
| `egress_tunnel` | 9 |
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
| `attempt` | {'int': 9} |
| `exitStatus` | {'int': 4} |
| `kind` | {'str': 9} |
| `outcome` | {'str': 9} |
| `runtimeS` | {'int': 4} |

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
| `chromeBrowserPssKb` | {'int': 4011} |
| `chromeGpuPssKb` | {'int': 4011} |
| `chromeOtherPssKb` | {'int': 4011} |
| `chromeProcesses` | {'int': 4011} |
| `chromeProfiles` | {'int': 4011} |
| `chromeRendererMaxPssKb` | {'int': 4011} |
| `chromeRendererPssKb` | {'int': 4011} |
| `chromeRenderers` | {'int': 4011} |
| `chromeTabs` | {'int': 4011} |
| `chromeTabsProbedProfiles` | {'int': 4011} |
| `chromeUtilityPssKb` | {'int': 4011} |
| `desktopPssKb` | {'int': 4011} |
| `hostPssKb` | {'int': 4011} |
| `kind` | {'str': 4011} |
| `memAvailableKb` | {'int': 4011} |
| `memTotalKb` | {'int': 4011} |
| `otherPssKb` | {'int': 4011} |
| `processes` | {'int': 4011} |
| `pssFallbackProcesses` | {'int': 4011} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
