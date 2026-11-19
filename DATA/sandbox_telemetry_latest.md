# sandbox_telemetry_parse — 2026-11-19 08:27:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1187296 lines=2633
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2624 |
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
| `chromeBrowserPssKb` | {'int': 2624} |
| `chromeGpuPssKb` | {'int': 2624} |
| `chromeOtherPssKb` | {'int': 2624} |
| `chromeProcesses` | {'int': 2624} |
| `chromeProfiles` | {'int': 2624} |
| `chromeRendererMaxPssKb` | {'int': 2624} |
| `chromeRendererPssKb` | {'int': 2624} |
| `chromeRenderers` | {'int': 2624} |
| `chromeTabs` | {'int': 2624} |
| `chromeTabsProbedProfiles` | {'int': 2624} |
| `chromeUtilityPssKb` | {'int': 2624} |
| `desktopPssKb` | {'int': 2624} |
| `hostPssKb` | {'int': 2624} |
| `kind` | {'str': 2624} |
| `memAvailableKb` | {'int': 2624} |
| `memTotalKb` | {'int': 2624} |
| `otherPssKb` | {'int': 2624} |
| `processes` | {'int': 2624} |
| `pssFallbackProcesses` | {'int': 2624} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
