# sandbox_telemetry_parse — 2026-11-09 10:09:30 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=606832 lines=1349
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1340 |
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
| `chromeBrowserPssKb` | {'int': 1340} |
| `chromeGpuPssKb` | {'int': 1340} |
| `chromeOtherPssKb` | {'int': 1340} |
| `chromeProcesses` | {'int': 1340} |
| `chromeProfiles` | {'int': 1340} |
| `chromeRendererMaxPssKb` | {'int': 1340} |
| `chromeRendererPssKb` | {'int': 1340} |
| `chromeRenderers` | {'int': 1340} |
| `chromeTabs` | {'int': 1340} |
| `chromeTabsProbedProfiles` | {'int': 1340} |
| `chromeUtilityPssKb` | {'int': 1340} |
| `desktopPssKb` | {'int': 1340} |
| `hostPssKb` | {'int': 1340} |
| `kind` | {'str': 1340} |
| `memAvailableKb` | {'int': 1340} |
| `memTotalKb` | {'int': 1340} |
| `otherPssKb` | {'int': 1340} |
| `processes` | {'int': 1340} |
| `pssFallbackProcesses` | {'int': 1340} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
