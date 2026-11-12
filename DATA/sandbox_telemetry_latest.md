# sandbox_telemetry_parse — 2026-11-12 22:56:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2361398 lines=5226
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5217 |
| `egress_tunnel` | 5 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 5217} |
| `chromeGpuPssKb` | {'int': 5217} |
| `chromeOtherPssKb` | {'int': 5217} |
| `chromeProcesses` | {'int': 5217} |
| `chromeProfiles` | {'int': 5217} |
| `chromeRendererMaxPssKb` | {'int': 5217} |
| `chromeRendererPssKb` | {'int': 5217} |
| `chromeRenderers` | {'int': 5217} |
| `chromeTabs` | {'int': 5217} |
| `chromeTabsProbedProfiles` | {'int': 5217} |
| `chromeUtilityPssKb` | {'int': 5217} |
| `desktopPssKb` | {'int': 5217} |
| `hostPssKb` | {'int': 5217} |
| `kind` | {'str': 5217} |
| `memAvailableKb` | {'int': 5217} |
| `memTotalKb` | {'int': 5217} |
| `otherPssKb` | {'int': 5217} |
| `processes` | {'int': 5217} |
| `pssFallbackProcesses` | {'int': 5217} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
