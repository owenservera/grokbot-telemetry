# sandbox_telemetry_parse — 2026-11-26 08:41:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3167196 lines=7015
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7000 |
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
| `chromeBrowserPssKb` | {'int': 7000} |
| `chromeGpuPssKb` | {'int': 7000} |
| `chromeOtherPssKb` | {'int': 7000} |
| `chromeProcesses` | {'int': 7000} |
| `chromeProfiles` | {'int': 7000} |
| `chromeRendererMaxPssKb` | {'int': 7000} |
| `chromeRendererPssKb` | {'int': 7000} |
| `chromeRenderers` | {'int': 7000} |
| `chromeTabs` | {'int': 7000} |
| `chromeTabsProbedProfiles` | {'int': 7000} |
| `chromeUtilityPssKb` | {'int': 7000} |
| `desktopPssKb` | {'int': 7000} |
| `hostPssKb` | {'int': 7000} |
| `kind` | {'str': 7000} |
| `memAvailableKb` | {'int': 7000} |
| `memTotalKb` | {'int': 7000} |
| `otherPssKb` | {'int': 7000} |
| `processes` | {'int': 7000} |
| `pssFallbackProcesses` | {'int': 7000} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
