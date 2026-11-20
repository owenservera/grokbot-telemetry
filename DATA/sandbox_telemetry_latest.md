# sandbox_telemetry_parse — 2026-11-20 07:30:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1620329 lines=3592
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3581 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3581} |
| `chromeGpuPssKb` | {'int': 3581} |
| `chromeOtherPssKb` | {'int': 3581} |
| `chromeProcesses` | {'int': 3581} |
| `chromeProfiles` | {'int': 3581} |
| `chromeRendererMaxPssKb` | {'int': 3581} |
| `chromeRendererPssKb` | {'int': 3581} |
| `chromeRenderers` | {'int': 3581} |
| `chromeTabs` | {'int': 3581} |
| `chromeTabsProbedProfiles` | {'int': 3581} |
| `chromeUtilityPssKb` | {'int': 3581} |
| `desktopPssKb` | {'int': 3581} |
| `hostPssKb` | {'int': 3581} |
| `kind` | {'str': 3581} |
| `memAvailableKb` | {'int': 3581} |
| `memTotalKb` | {'int': 3581} |
| `otherPssKb` | {'int': 3581} |
| `processes` | {'int': 3581} |
| `pssFallbackProcesses` | {'int': 3581} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
