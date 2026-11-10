# sandbox_telemetry_parse — 2026-11-10 11:10:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1110450 lines=2462
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2453 |
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
| `chromeBrowserPssKb` | {'int': 2453} |
| `chromeGpuPssKb` | {'int': 2453} |
| `chromeOtherPssKb` | {'int': 2453} |
| `chromeProcesses` | {'int': 2453} |
| `chromeProfiles` | {'int': 2453} |
| `chromeRendererMaxPssKb` | {'int': 2453} |
| `chromeRendererPssKb` | {'int': 2453} |
| `chromeRenderers` | {'int': 2453} |
| `chromeTabs` | {'int': 2453} |
| `chromeTabsProbedProfiles` | {'int': 2453} |
| `chromeUtilityPssKb` | {'int': 2453} |
| `desktopPssKb` | {'int': 2453} |
| `hostPssKb` | {'int': 2453} |
| `kind` | {'str': 2453} |
| `memAvailableKb` | {'int': 2453} |
| `memTotalKb` | {'int': 2453} |
| `otherPssKb` | {'int': 2453} |
| `processes` | {'int': 2453} |
| `pssFallbackProcesses` | {'int': 2453} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
