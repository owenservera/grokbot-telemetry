# sandbox_telemetry_parse — 2026-11-06 22:06:21 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=187553 lines=422
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 413 |
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
| `chromeBrowserPssKb` | {'int': 413} |
| `chromeGpuPssKb` | {'int': 413} |
| `chromeOtherPssKb` | {'int': 413} |
| `chromeProcesses` | {'int': 413} |
| `chromeProfiles` | {'int': 413} |
| `chromeRendererMaxPssKb` | {'int': 413} |
| `chromeRendererPssKb` | {'int': 413} |
| `chromeRenderers` | {'int': 413} |
| `chromeTabs` | {'int': 413} |
| `chromeTabsProbedProfiles` | {'int': 413} |
| `chromeUtilityPssKb` | {'int': 413} |
| `desktopPssKb` | {'int': 413} |
| `hostPssKb` | {'int': 413} |
| `kind` | {'str': 413} |
| `memAvailableKb` | {'int': 413} |
| `memTotalKb` | {'int': 413} |
| `otherPssKb` | {'int': 413} |
| `processes` | {'int': 413} |
| `pssFallbackProcesses` | {'int': 413} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
