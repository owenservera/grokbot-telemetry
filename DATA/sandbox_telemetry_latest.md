# sandbox_telemetry_parse — 2026-11-12 06:22:13 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2005118 lines=4439
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4430 |
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
| `chromeBrowserPssKb` | {'int': 4430} |
| `chromeGpuPssKb` | {'int': 4430} |
| `chromeOtherPssKb` | {'int': 4430} |
| `chromeProcesses` | {'int': 4430} |
| `chromeProfiles` | {'int': 4430} |
| `chromeRendererMaxPssKb` | {'int': 4430} |
| `chromeRendererPssKb` | {'int': 4430} |
| `chromeRenderers` | {'int': 4430} |
| `chromeTabs` | {'int': 4430} |
| `chromeTabsProbedProfiles` | {'int': 4430} |
| `chromeUtilityPssKb` | {'int': 4430} |
| `desktopPssKb` | {'int': 4430} |
| `hostPssKb` | {'int': 4430} |
| `kind` | {'str': 4430} |
| `memAvailableKb` | {'int': 4430} |
| `memTotalKb` | {'int': 4430} |
| `otherPssKb` | {'int': 4430} |
| `processes` | {'int': 4430} |
| `pssFallbackProcesses` | {'int': 4430} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
