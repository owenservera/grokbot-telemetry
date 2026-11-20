# sandbox_telemetry_parse — 2026-11-20 03:32:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1558402 lines=3455
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3444 |
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
| `chromeBrowserPssKb` | {'int': 3444} |
| `chromeGpuPssKb` | {'int': 3444} |
| `chromeOtherPssKb` | {'int': 3444} |
| `chromeProcesses` | {'int': 3444} |
| `chromeProfiles` | {'int': 3444} |
| `chromeRendererMaxPssKb` | {'int': 3444} |
| `chromeRendererPssKb` | {'int': 3444} |
| `chromeRenderers` | {'int': 3444} |
| `chromeTabs` | {'int': 3444} |
| `chromeTabsProbedProfiles` | {'int': 3444} |
| `chromeUtilityPssKb` | {'int': 3444} |
| `desktopPssKb` | {'int': 3444} |
| `hostPssKb` | {'int': 3444} |
| `kind` | {'str': 3444} |
| `memAvailableKb` | {'int': 3444} |
| `memTotalKb` | {'int': 3444} |
| `otherPssKb` | {'int': 3444} |
| `processes` | {'int': 3444} |
| `pssFallbackProcesses` | {'int': 3444} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
