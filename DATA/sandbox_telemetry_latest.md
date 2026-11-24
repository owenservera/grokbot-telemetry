# sandbox_telemetry_parse — 2026-11-24 12:37:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2286506 lines=5068
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5053 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 5053} |
| `chromeGpuPssKb` | {'int': 5053} |
| `chromeOtherPssKb` | {'int': 5053} |
| `chromeProcesses` | {'int': 5053} |
| `chromeProfiles` | {'int': 5053} |
| `chromeRendererMaxPssKb` | {'int': 5053} |
| `chromeRendererPssKb` | {'int': 5053} |
| `chromeRenderers` | {'int': 5053} |
| `chromeTabs` | {'int': 5053} |
| `chromeTabsProbedProfiles` | {'int': 5053} |
| `chromeUtilityPssKb` | {'int': 5053} |
| `desktopPssKb` | {'int': 5053} |
| `hostPssKb` | {'int': 5053} |
| `kind` | {'str': 5053} |
| `memAvailableKb` | {'int': 5053} |
| `memTotalKb` | {'int': 5053} |
| `otherPssKb` | {'int': 5053} |
| `processes` | {'int': 5053} |
| `pssFallbackProcesses` | {'int': 5053} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
