# sandbox_telemetry_parse — 2026-11-19 13:27:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1290860 lines=2862
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2853 |
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
| `chromeBrowserPssKb` | {'int': 2853} |
| `chromeGpuPssKb` | {'int': 2853} |
| `chromeOtherPssKb` | {'int': 2853} |
| `chromeProcesses` | {'int': 2853} |
| `chromeProfiles` | {'int': 2853} |
| `chromeRendererMaxPssKb` | {'int': 2853} |
| `chromeRendererPssKb` | {'int': 2853} |
| `chromeRenderers` | {'int': 2853} |
| `chromeTabs` | {'int': 2853} |
| `chromeTabsProbedProfiles` | {'int': 2853} |
| `chromeUtilityPssKb` | {'int': 2853} |
| `desktopPssKb` | {'int': 2853} |
| `hostPssKb` | {'int': 2853} |
| `kind` | {'str': 2853} |
| `memAvailableKb` | {'int': 2853} |
| `memTotalKb` | {'int': 2853} |
| `otherPssKb` | {'int': 2853} |
| `processes` | {'int': 2853} |
| `pssFallbackProcesses` | {'int': 2853} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
