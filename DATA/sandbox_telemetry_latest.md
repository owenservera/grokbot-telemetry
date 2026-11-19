# sandbox_telemetry_parse — 2026-11-20 00:50:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1514106 lines=3357
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3346 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3346} |
| `chromeGpuPssKb` | {'int': 3346} |
| `chromeOtherPssKb` | {'int': 3346} |
| `chromeProcesses` | {'int': 3346} |
| `chromeProfiles` | {'int': 3346} |
| `chromeRendererMaxPssKb` | {'int': 3346} |
| `chromeRendererPssKb` | {'int': 3346} |
| `chromeRenderers` | {'int': 3346} |
| `chromeTabs` | {'int': 3346} |
| `chromeTabsProbedProfiles` | {'int': 3346} |
| `chromeUtilityPssKb` | {'int': 3346} |
| `desktopPssKb` | {'int': 3346} |
| `hostPssKb` | {'int': 3346} |
| `kind` | {'str': 3346} |
| `memAvailableKb` | {'int': 3346} |
| `memTotalKb` | {'int': 3346} |
| `otherPssKb` | {'int': 3346} |
| `processes` | {'int': 3346} |
| `pssFallbackProcesses` | {'int': 3346} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
