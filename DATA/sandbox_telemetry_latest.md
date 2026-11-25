# sandbox_telemetry_parse — 2026-11-25 09:27:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2692764 lines=5966
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5951 |
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
| `chromeBrowserPssKb` | {'int': 5951} |
| `chromeGpuPssKb` | {'int': 5951} |
| `chromeOtherPssKb` | {'int': 5951} |
| `chromeProcesses` | {'int': 5951} |
| `chromeProfiles` | {'int': 5951} |
| `chromeRendererMaxPssKb` | {'int': 5951} |
| `chromeRendererPssKb` | {'int': 5951} |
| `chromeRenderers` | {'int': 5951} |
| `chromeTabs` | {'int': 5951} |
| `chromeTabsProbedProfiles` | {'int': 5951} |
| `chromeUtilityPssKb` | {'int': 5951} |
| `desktopPssKb` | {'int': 5951} |
| `hostPssKb` | {'int': 5951} |
| `kind` | {'str': 5951} |
| `memAvailableKb` | {'int': 5951} |
| `memTotalKb` | {'int': 5951} |
| `otherPssKb` | {'int': 5951} |
| `processes` | {'int': 5951} |
| `pssFallbackProcesses` | {'int': 5951} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
