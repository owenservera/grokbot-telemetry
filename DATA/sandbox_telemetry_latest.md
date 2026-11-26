# sandbox_telemetry_parse — 2026-11-26 18:49:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=38636 lines=92
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 84 |
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
| `chromeBrowserPssKb` | {'int': 84} |
| `chromeGpuPssKb` | {'int': 84} |
| `chromeOtherPssKb` | {'int': 84} |
| `chromeProcesses` | {'int': 84} |
| `chromeProfiles` | {'int': 84} |
| `chromeRendererMaxPssKb` | {'int': 84} |
| `chromeRendererPssKb` | {'int': 84} |
| `chromeRenderers` | {'int': 84} |
| `chromeTabs` | {'int': 84} |
| `chromeTabsProbedProfiles` | {'int': 84} |
| `chromeUtilityPssKb` | {'int': 84} |
| `desktopPssKb` | {'int': 84} |
| `hostPssKb` | {'int': 84} |
| `kind` | {'str': 84} |
| `memAvailableKb` | {'int': 84} |
| `memTotalKb` | {'int': 84} |
| `otherPssKb` | {'int': 84} |
| `processes` | {'int': 84} |
| `pssFallbackProcesses` | {'int': 84} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
