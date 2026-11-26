# sandbox_telemetry_parse — 2026-11-26 19:32:26 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=54911 lines=128
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 120 |
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
| `chromeBrowserPssKb` | {'int': 120} |
| `chromeGpuPssKb` | {'int': 120} |
| `chromeOtherPssKb` | {'int': 120} |
| `chromeProcesses` | {'int': 120} |
| `chromeProfiles` | {'int': 120} |
| `chromeRendererMaxPssKb` | {'int': 120} |
| `chromeRendererPssKb` | {'int': 120} |
| `chromeRenderers` | {'int': 120} |
| `chromeTabs` | {'int': 120} |
| `chromeTabsProbedProfiles` | {'int': 120} |
| `chromeUtilityPssKb` | {'int': 120} |
| `desktopPssKb` | {'int': 120} |
| `hostPssKb` | {'int': 120} |
| `kind` | {'str': 120} |
| `memAvailableKb` | {'int': 120} |
| `memTotalKb` | {'int': 120} |
| `otherPssKb` | {'int': 120} |
| `processes` | {'int': 120} |
| `pssFallbackProcesses` | {'int': 120} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
