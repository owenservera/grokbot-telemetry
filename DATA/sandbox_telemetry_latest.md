# sandbox_telemetry_parse — 2026-11-25 20:49:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2919775 lines=6468
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6453 |
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
| `chromeBrowserPssKb` | {'int': 6453} |
| `chromeGpuPssKb` | {'int': 6453} |
| `chromeOtherPssKb` | {'int': 6453} |
| `chromeProcesses` | {'int': 6453} |
| `chromeProfiles` | {'int': 6453} |
| `chromeRendererMaxPssKb` | {'int': 6453} |
| `chromeRendererPssKb` | {'int': 6453} |
| `chromeRenderers` | {'int': 6453} |
| `chromeTabs` | {'int': 6453} |
| `chromeTabsProbedProfiles` | {'int': 6453} |
| `chromeUtilityPssKb` | {'int': 6453} |
| `desktopPssKb` | {'int': 6453} |
| `hostPssKb` | {'int': 6453} |
| `kind` | {'str': 6453} |
| `memAvailableKb` | {'int': 6453} |
| `memTotalKb` | {'int': 6453} |
| `otherPssKb` | {'int': 6453} |
| `processes` | {'int': 6453} |
| `pssFallbackProcesses` | {'int': 6453} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
