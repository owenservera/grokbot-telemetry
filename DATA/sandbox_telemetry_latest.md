# sandbox_telemetry_parse — 2026-11-26 17:31:10 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=9668 lines=28
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 20 |
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
| `chromeBrowserPssKb` | {'int': 20} |
| `chromeGpuPssKb` | {'int': 20} |
| `chromeOtherPssKb` | {'int': 20} |
| `chromeProcesses` | {'int': 20} |
| `chromeProfiles` | {'int': 20} |
| `chromeRendererMaxPssKb` | {'int': 20} |
| `chromeRendererPssKb` | {'int': 20} |
| `chromeRenderers` | {'int': 20} |
| `chromeTabs` | {'int': 20} |
| `chromeTabsProbedProfiles` | {'int': 20} |
| `chromeUtilityPssKb` | {'int': 20} |
| `desktopPssKb` | {'int': 20} |
| `hostPssKb` | {'int': 20} |
| `kind` | {'str': 20} |
| `memAvailableKb` | {'int': 20} |
| `memTotalKb` | {'int': 20} |
| `otherPssKb` | {'int': 20} |
| `processes` | {'int': 20} |
| `pssFallbackProcesses` | {'int': 20} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
