# sandbox_telemetry_parse — 2026-11-11 13:11:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1644878 lines=3643
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3634 |
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
| `chromeBrowserPssKb` | {'int': 3634} |
| `chromeGpuPssKb` | {'int': 3634} |
| `chromeOtherPssKb` | {'int': 3634} |
| `chromeProcesses` | {'int': 3634} |
| `chromeProfiles` | {'int': 3634} |
| `chromeRendererMaxPssKb` | {'int': 3634} |
| `chromeRendererPssKb` | {'int': 3634} |
| `chromeRenderers` | {'int': 3634} |
| `chromeTabs` | {'int': 3634} |
| `chromeTabsProbedProfiles` | {'int': 3634} |
| `chromeUtilityPssKb` | {'int': 3634} |
| `desktopPssKb` | {'int': 3634} |
| `hostPssKb` | {'int': 3634} |
| `kind` | {'str': 3634} |
| `memAvailableKb` | {'int': 3634} |
| `memTotalKb` | {'int': 3634} |
| `otherPssKb` | {'int': 3634} |
| `processes` | {'int': 3634} |
| `pssFallbackProcesses` | {'int': 3634} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
