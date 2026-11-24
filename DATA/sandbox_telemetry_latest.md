# sandbox_telemetry_parse — 2026-11-24 11:56:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2274297 lines=5041
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5026 |
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
| `chromeBrowserPssKb` | {'int': 5026} |
| `chromeGpuPssKb` | {'int': 5026} |
| `chromeOtherPssKb` | {'int': 5026} |
| `chromeProcesses` | {'int': 5026} |
| `chromeProfiles` | {'int': 5026} |
| `chromeRendererMaxPssKb` | {'int': 5026} |
| `chromeRendererPssKb` | {'int': 5026} |
| `chromeRenderers` | {'int': 5026} |
| `chromeTabs` | {'int': 5026} |
| `chromeTabsProbedProfiles` | {'int': 5026} |
| `chromeUtilityPssKb` | {'int': 5026} |
| `desktopPssKb` | {'int': 5026} |
| `hostPssKb` | {'int': 5026} |
| `kind` | {'str': 5026} |
| `memAvailableKb` | {'int': 5026} |
| `memTotalKb` | {'int': 5026} |
| `otherPssKb` | {'int': 5026} |
| `processes` | {'int': 5026} |
| `pssFallbackProcesses` | {'int': 5026} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
