# sandbox_telemetry_parse — 2026-11-27 02:05:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=185172 lines=416
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 408 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 408} |
| `chromeGpuPssKb` | {'int': 408} |
| `chromeOtherPssKb` | {'int': 408} |
| `chromeProcesses` | {'int': 408} |
| `chromeProfiles` | {'int': 408} |
| `chromeRendererMaxPssKb` | {'int': 408} |
| `chromeRendererPssKb` | {'int': 408} |
| `chromeRenderers` | {'int': 408} |
| `chromeTabs` | {'int': 408} |
| `chromeTabsProbedProfiles` | {'int': 408} |
| `chromeUtilityPssKb` | {'int': 408} |
| `desktopPssKb` | {'int': 408} |
| `hostPssKb` | {'int': 408} |
| `kind` | {'str': 408} |
| `memAvailableKb` | {'int': 408} |
| `memTotalKb` | {'int': 408} |
| `otherPssKb` | {'int': 408} |
| `processes` | {'int': 408} |
| `pssFallbackProcesses` | {'int': 408} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
