# sandbox_telemetry_parse — 2026-11-20 10:14:19 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1671426 lines=3705
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3694 |
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
| `chromeBrowserPssKb` | {'int': 3694} |
| `chromeGpuPssKb` | {'int': 3694} |
| `chromeOtherPssKb` | {'int': 3694} |
| `chromeProcesses` | {'int': 3694} |
| `chromeProfiles` | {'int': 3694} |
| `chromeRendererMaxPssKb` | {'int': 3694} |
| `chromeRendererPssKb` | {'int': 3694} |
| `chromeRenderers` | {'int': 3694} |
| `chromeTabs` | {'int': 3694} |
| `chromeTabsProbedProfiles` | {'int': 3694} |
| `chromeUtilityPssKb` | {'int': 3694} |
| `desktopPssKb` | {'int': 3694} |
| `hostPssKb` | {'int': 3694} |
| `kind` | {'str': 3694} |
| `memAvailableKb` | {'int': 3694} |
| `memTotalKb` | {'int': 3694} |
| `otherPssKb` | {'int': 3694} |
| `processes` | {'int': 3694} |
| `pssFallbackProcesses` | {'int': 3694} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
