# sandbox_telemetry_parse — 2026-11-27 12:29:54 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=412232 lines=918
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 910 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 910} |
| `chromeGpuPssKb` | {'int': 910} |
| `chromeOtherPssKb` | {'int': 910} |
| `chromeProcesses` | {'int': 910} |
| `chromeProfiles` | {'int': 910} |
| `chromeRendererMaxPssKb` | {'int': 910} |
| `chromeRendererPssKb` | {'int': 910} |
| `chromeRenderers` | {'int': 910} |
| `chromeTabs` | {'int': 910} |
| `chromeTabsProbedProfiles` | {'int': 910} |
| `chromeUtilityPssKb` | {'int': 910} |
| `desktopPssKb` | {'int': 910} |
| `hostPssKb` | {'int': 910} |
| `kind` | {'str': 910} |
| `memAvailableKb` | {'int': 910} |
| `memTotalKb` | {'int': 910} |
| `otherPssKb` | {'int': 910} |
| `processes` | {'int': 910} |
| `pssFallbackProcesses` | {'int': 910} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
