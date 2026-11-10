# sandbox_telemetry_parse — 2026-11-10 13:56:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1168410 lines=2590
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2581 |
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
| `chromeBrowserPssKb` | {'int': 2581} |
| `chromeGpuPssKb` | {'int': 2581} |
| `chromeOtherPssKb` | {'int': 2581} |
| `chromeProcesses` | {'int': 2581} |
| `chromeProfiles` | {'int': 2581} |
| `chromeRendererMaxPssKb` | {'int': 2581} |
| `chromeRendererPssKb` | {'int': 2581} |
| `chromeRenderers` | {'int': 2581} |
| `chromeTabs` | {'int': 2581} |
| `chromeTabsProbedProfiles` | {'int': 2581} |
| `chromeUtilityPssKb` | {'int': 2581} |
| `desktopPssKb` | {'int': 2581} |
| `hostPssKb` | {'int': 2581} |
| `kind` | {'str': 2581} |
| `memAvailableKb` | {'int': 2581} |
| `memTotalKb` | {'int': 2581} |
| `otherPssKb` | {'int': 2581} |
| `processes` | {'int': 2581} |
| `pssFallbackProcesses` | {'int': 2581} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
