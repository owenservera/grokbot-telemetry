# sandbox_telemetry_parse — 2026-11-28 15:19:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=941669 lines=2088
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2080 |
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
| `chromeBrowserPssKb` | {'int': 2080} |
| `chromeGpuPssKb` | {'int': 2080} |
| `chromeOtherPssKb` | {'int': 2080} |
| `chromeProcesses` | {'int': 2080} |
| `chromeProfiles` | {'int': 2080} |
| `chromeRendererMaxPssKb` | {'int': 2080} |
| `chromeRendererPssKb` | {'int': 2080} |
| `chromeRenderers` | {'int': 2080} |
| `chromeTabs` | {'int': 2080} |
| `chromeTabsProbedProfiles` | {'int': 2080} |
| `chromeUtilityPssKb` | {'int': 2080} |
| `desktopPssKb` | {'int': 2080} |
| `hostPssKb` | {'int': 2080} |
| `kind` | {'str': 2080} |
| `memAvailableKb` | {'int': 2080} |
| `memTotalKb` | {'int': 2080} |
| `otherPssKb` | {'int': 2080} |
| `processes` | {'int': 2080} |
| `pssFallbackProcesses` | {'int': 2080} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
