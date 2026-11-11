# sandbox_telemetry_parse — 2026-11-11 09:16:32 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1559784 lines=3455
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3446 |
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
| `chromeBrowserPssKb` | {'int': 3446} |
| `chromeGpuPssKb` | {'int': 3446} |
| `chromeOtherPssKb` | {'int': 3446} |
| `chromeProcesses` | {'int': 3446} |
| `chromeProfiles` | {'int': 3446} |
| `chromeRendererMaxPssKb` | {'int': 3446} |
| `chromeRendererPssKb` | {'int': 3446} |
| `chromeRenderers` | {'int': 3446} |
| `chromeTabs` | {'int': 3446} |
| `chromeTabsProbedProfiles` | {'int': 3446} |
| `chromeUtilityPssKb` | {'int': 3446} |
| `desktopPssKb` | {'int': 3446} |
| `hostPssKb` | {'int': 3446} |
| `kind` | {'str': 3446} |
| `memAvailableKb` | {'int': 3446} |
| `memTotalKb` | {'int': 3446} |
| `otherPssKb` | {'int': 3446} |
| `processes` | {'int': 3446} |
| `pssFallbackProcesses` | {'int': 3446} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
