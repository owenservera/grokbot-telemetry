# sandbox_telemetry_parse — 2026-11-25 10:22:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2714941 lines=6015
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6000 |
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
| `chromeBrowserPssKb` | {'int': 6000} |
| `chromeGpuPssKb` | {'int': 6000} |
| `chromeOtherPssKb` | {'int': 6000} |
| `chromeProcesses` | {'int': 6000} |
| `chromeProfiles` | {'int': 6000} |
| `chromeRendererMaxPssKb` | {'int': 6000} |
| `chromeRendererPssKb` | {'int': 6000} |
| `chromeRenderers` | {'int': 6000} |
| `chromeTabs` | {'int': 6000} |
| `chromeTabsProbedProfiles` | {'int': 6000} |
| `chromeUtilityPssKb` | {'int': 6000} |
| `desktopPssKb` | {'int': 6000} |
| `hostPssKb` | {'int': 6000} |
| `kind` | {'str': 6000} |
| `memAvailableKb` | {'int': 6000} |
| `memTotalKb` | {'int': 6000} |
| `otherPssKb` | {'int': 6000} |
| `processes` | {'int': 6000} |
| `pssFallbackProcesses` | {'int': 6000} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
