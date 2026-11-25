# sandbox_telemetry_parse — 2026-11-25 23:39:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2977660 lines=6596
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6581 |
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
| `chromeBrowserPssKb` | {'int': 6581} |
| `chromeGpuPssKb` | {'int': 6581} |
| `chromeOtherPssKb` | {'int': 6581} |
| `chromeProcesses` | {'int': 6581} |
| `chromeProfiles` | {'int': 6581} |
| `chromeRendererMaxPssKb` | {'int': 6581} |
| `chromeRendererPssKb` | {'int': 6581} |
| `chromeRenderers` | {'int': 6581} |
| `chromeTabs` | {'int': 6581} |
| `chromeTabsProbedProfiles` | {'int': 6581} |
| `chromeUtilityPssKb` | {'int': 6581} |
| `desktopPssKb` | {'int': 6581} |
| `hostPssKb` | {'int': 6581} |
| `kind` | {'str': 6581} |
| `memAvailableKb` | {'int': 6581} |
| `memTotalKb` | {'int': 6581} |
| `otherPssKb` | {'int': 6581} |
| `processes` | {'int': 6581} |
| `pssFallbackProcesses` | {'int': 6581} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
