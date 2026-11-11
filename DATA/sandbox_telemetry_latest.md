# sandbox_telemetry_parse — 2026-11-11 03:57:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1460758 lines=3236
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3227 |
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
| `chromeBrowserPssKb` | {'int': 3227} |
| `chromeGpuPssKb` | {'int': 3227} |
| `chromeOtherPssKb` | {'int': 3227} |
| `chromeProcesses` | {'int': 3227} |
| `chromeProfiles` | {'int': 3227} |
| `chromeRendererMaxPssKb` | {'int': 3227} |
| `chromeRendererPssKb` | {'int': 3227} |
| `chromeRenderers` | {'int': 3227} |
| `chromeTabs` | {'int': 3227} |
| `chromeTabsProbedProfiles` | {'int': 3227} |
| `chromeUtilityPssKb` | {'int': 3227} |
| `desktopPssKb` | {'int': 3227} |
| `hostPssKb` | {'int': 3227} |
| `kind` | {'str': 3227} |
| `memAvailableKb` | {'int': 3227} |
| `memTotalKb` | {'int': 3227} |
| `otherPssKb` | {'int': 3227} |
| `processes` | {'int': 3227} |
| `pssFallbackProcesses` | {'int': 3227} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
