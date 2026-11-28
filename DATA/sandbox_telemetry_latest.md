# sandbox_telemetry_parse — 2026-11-28 19:06:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1015950 lines=2252
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2244 |
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
| `chromeBrowserPssKb` | {'int': 2244} |
| `chromeGpuPssKb` | {'int': 2244} |
| `chromeOtherPssKb` | {'int': 2244} |
| `chromeProcesses` | {'int': 2244} |
| `chromeProfiles` | {'int': 2244} |
| `chromeRendererMaxPssKb` | {'int': 2244} |
| `chromeRendererPssKb` | {'int': 2244} |
| `chromeRenderers` | {'int': 2244} |
| `chromeTabs` | {'int': 2244} |
| `chromeTabsProbedProfiles` | {'int': 2244} |
| `chromeUtilityPssKb` | {'int': 2244} |
| `desktopPssKb` | {'int': 2244} |
| `hostPssKb` | {'int': 2244} |
| `kind` | {'str': 2244} |
| `memAvailableKb` | {'int': 2244} |
| `memTotalKb` | {'int': 2244} |
| `otherPssKb` | {'int': 2244} |
| `processes` | {'int': 2244} |
| `pssFallbackProcesses` | {'int': 2244} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
