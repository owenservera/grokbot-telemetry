# sandbox_telemetry_parse — 2026-11-19 14:41:10 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1316661 lines=2919
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2910 |
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
| `chromeBrowserPssKb` | {'int': 2910} |
| `chromeGpuPssKb` | {'int': 2910} |
| `chromeOtherPssKb` | {'int': 2910} |
| `chromeProcesses` | {'int': 2910} |
| `chromeProfiles` | {'int': 2910} |
| `chromeRendererMaxPssKb` | {'int': 2910} |
| `chromeRendererPssKb` | {'int': 2910} |
| `chromeRenderers` | {'int': 2910} |
| `chromeTabs` | {'int': 2910} |
| `chromeTabsProbedProfiles` | {'int': 2910} |
| `chromeUtilityPssKb` | {'int': 2910} |
| `desktopPssKb` | {'int': 2910} |
| `hostPssKb` | {'int': 2910} |
| `kind` | {'str': 2910} |
| `memAvailableKb` | {'int': 2910} |
| `memTotalKb` | {'int': 2910} |
| `otherPssKb` | {'int': 2910} |
| `processes` | {'int': 2910} |
| `pssFallbackProcesses` | {'int': 2910} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
