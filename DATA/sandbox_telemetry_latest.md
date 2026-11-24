# sandbox_telemetry_parse — 2026-11-24 14:33:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2324057 lines=5151
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5136 |
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
| `chromeBrowserPssKb` | {'int': 5136} |
| `chromeGpuPssKb` | {'int': 5136} |
| `chromeOtherPssKb` | {'int': 5136} |
| `chromeProcesses` | {'int': 5136} |
| `chromeProfiles` | {'int': 5136} |
| `chromeRendererMaxPssKb` | {'int': 5136} |
| `chromeRendererPssKb` | {'int': 5136} |
| `chromeRenderers` | {'int': 5136} |
| `chromeTabs` | {'int': 5136} |
| `chromeTabsProbedProfiles` | {'int': 5136} |
| `chromeUtilityPssKb` | {'int': 5136} |
| `desktopPssKb` | {'int': 5136} |
| `hostPssKb` | {'int': 5136} |
| `kind` | {'str': 5136} |
| `memAvailableKb` | {'int': 5136} |
| `memTotalKb` | {'int': 5136} |
| `otherPssKb` | {'int': 5136} |
| `processes` | {'int': 5136} |
| `pssFallbackProcesses` | {'int': 5136} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
