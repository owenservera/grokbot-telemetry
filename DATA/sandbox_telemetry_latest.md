# sandbox_telemetry_parse — 2026-11-24 18:36:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2399228 lines=5317
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5302 |
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
| `chromeBrowserPssKb` | {'int': 5302} |
| `chromeGpuPssKb` | {'int': 5302} |
| `chromeOtherPssKb` | {'int': 5302} |
| `chromeProcesses` | {'int': 5302} |
| `chromeProfiles` | {'int': 5302} |
| `chromeRendererMaxPssKb` | {'int': 5302} |
| `chromeRendererPssKb` | {'int': 5302} |
| `chromeRenderers` | {'int': 5302} |
| `chromeTabs` | {'int': 5302} |
| `chromeTabsProbedProfiles` | {'int': 5302} |
| `chromeUtilityPssKb` | {'int': 5302} |
| `desktopPssKb` | {'int': 5302} |
| `hostPssKb` | {'int': 5302} |
| `kind` | {'str': 5302} |
| `memAvailableKb` | {'int': 5302} |
| `memTotalKb` | {'int': 5302} |
| `otherPssKb` | {'int': 5302} |
| `processes` | {'int': 5302} |
| `pssFallbackProcesses` | {'int': 5302} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
