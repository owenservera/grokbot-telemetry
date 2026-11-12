# sandbox_telemetry_parse — 2026-11-12 19:17:18 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2288077 lines=5064
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5055 |
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
| `chromeBrowserPssKb` | {'int': 5055} |
| `chromeGpuPssKb` | {'int': 5055} |
| `chromeOtherPssKb` | {'int': 5055} |
| `chromeProcesses` | {'int': 5055} |
| `chromeProfiles` | {'int': 5055} |
| `chromeRendererMaxPssKb` | {'int': 5055} |
| `chromeRendererPssKb` | {'int': 5055} |
| `chromeRenderers` | {'int': 5055} |
| `chromeTabs` | {'int': 5055} |
| `chromeTabsProbedProfiles` | {'int': 5055} |
| `chromeUtilityPssKb` | {'int': 5055} |
| `desktopPssKb` | {'int': 5055} |
| `hostPssKb` | {'int': 5055} |
| `kind` | {'str': 5055} |
| `memAvailableKb` | {'int': 5055} |
| `memTotalKb` | {'int': 5055} |
| `otherPssKb` | {'int': 5055} |
| `processes` | {'int': 5055} |
| `pssFallbackProcesses` | {'int': 5055} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
