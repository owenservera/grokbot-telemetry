# sandbox_telemetry_parse — 2026-11-26 17:27:09 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=7856 lines=24
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 16 |
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
| `chromeBrowserPssKb` | {'int': 16} |
| `chromeGpuPssKb` | {'int': 16} |
| `chromeOtherPssKb` | {'int': 16} |
| `chromeProcesses` | {'int': 16} |
| `chromeProfiles` | {'int': 16} |
| `chromeRendererMaxPssKb` | {'int': 16} |
| `chromeRendererPssKb` | {'int': 16} |
| `chromeRenderers` | {'int': 16} |
| `chromeTabs` | {'int': 16} |
| `chromeTabsProbedProfiles` | {'int': 16} |
| `chromeUtilityPssKb` | {'int': 16} |
| `desktopPssKb` | {'int': 16} |
| `hostPssKb` | {'int': 16} |
| `kind` | {'str': 16} |
| `memAvailableKb` | {'int': 16} |
| `memTotalKb` | {'int': 16} |
| `otherPssKb` | {'int': 16} |
| `processes` | {'int': 16} |
| `pssFallbackProcesses` | {'int': 16} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
