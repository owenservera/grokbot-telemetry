# sandbox_telemetry_parse — 2026-11-20 14:43:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1759167 lines=3899
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3888 |
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
| `chromeBrowserPssKb` | {'int': 3888} |
| `chromeGpuPssKb` | {'int': 3888} |
| `chromeOtherPssKb` | {'int': 3888} |
| `chromeProcesses` | {'int': 3888} |
| `chromeProfiles` | {'int': 3888} |
| `chromeRendererMaxPssKb` | {'int': 3888} |
| `chromeRendererPssKb` | {'int': 3888} |
| `chromeRenderers` | {'int': 3888} |
| `chromeTabs` | {'int': 3888} |
| `chromeTabsProbedProfiles` | {'int': 3888} |
| `chromeUtilityPssKb` | {'int': 3888} |
| `desktopPssKb` | {'int': 3888} |
| `hostPssKb` | {'int': 3888} |
| `kind` | {'str': 3888} |
| `memAvailableKb` | {'int': 3888} |
| `memTotalKb` | {'int': 3888} |
| `otherPssKb` | {'int': 3888} |
| `processes` | {'int': 3888} |
| `pssFallbackProcesses` | {'int': 3888} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
