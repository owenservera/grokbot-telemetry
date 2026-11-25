# sandbox_telemetry_parse — 2026-11-25 20:37:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2914342 lines=6456
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6441 |
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
| `chromeBrowserPssKb` | {'int': 6441} |
| `chromeGpuPssKb` | {'int': 6441} |
| `chromeOtherPssKb` | {'int': 6441} |
| `chromeProcesses` | {'int': 6441} |
| `chromeProfiles` | {'int': 6441} |
| `chromeRendererMaxPssKb` | {'int': 6441} |
| `chromeRendererPssKb` | {'int': 6441} |
| `chromeRenderers` | {'int': 6441} |
| `chromeTabs` | {'int': 6441} |
| `chromeTabsProbedProfiles` | {'int': 6441} |
| `chromeUtilityPssKb` | {'int': 6441} |
| `desktopPssKb` | {'int': 6441} |
| `hostPssKb` | {'int': 6441} |
| `kind` | {'str': 6441} |
| `memAvailableKb` | {'int': 6441} |
| `memTotalKb` | {'int': 6441} |
| `otherPssKb` | {'int': 6441} |
| `processes` | {'int': 6441} |
| `pssFallbackProcesses` | {'int': 6441} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
