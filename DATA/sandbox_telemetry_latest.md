# sandbox_telemetry_parse — 2026-11-26 06:27:05 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3118802 lines=6908
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6893 |
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
| `chromeBrowserPssKb` | {'int': 6893} |
| `chromeGpuPssKb` | {'int': 6893} |
| `chromeOtherPssKb` | {'int': 6893} |
| `chromeProcesses` | {'int': 6893} |
| `chromeProfiles` | {'int': 6893} |
| `chromeRendererMaxPssKb` | {'int': 6893} |
| `chromeRendererPssKb` | {'int': 6893} |
| `chromeRenderers` | {'int': 6893} |
| `chromeTabs` | {'int': 6893} |
| `chromeTabsProbedProfiles` | {'int': 6893} |
| `chromeUtilityPssKb` | {'int': 6893} |
| `desktopPssKb` | {'int': 6893} |
| `hostPssKb` | {'int': 6893} |
| `kind` | {'str': 6893} |
| `memAvailableKb` | {'int': 6893} |
| `memTotalKb` | {'int': 6893} |
| `otherPssKb` | {'int': 6893} |
| `processes` | {'int': 6893} |
| `pssFallbackProcesses` | {'int': 6893} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
