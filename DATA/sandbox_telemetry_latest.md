# sandbox_telemetry_parse — 2026-11-20 16:26:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1795966 lines=3982
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3969 |
| `egress_tunnel` | 9 |
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
| `attempt` | {'int': 9} |
| `exitStatus` | {'int': 4} |
| `kind` | {'str': 9} |
| `outcome` | {'str': 9} |
| `runtimeS` | {'int': 4} |

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
| `chromeBrowserPssKb` | {'int': 3969} |
| `chromeGpuPssKb` | {'int': 3969} |
| `chromeOtherPssKb` | {'int': 3969} |
| `chromeProcesses` | {'int': 3969} |
| `chromeProfiles` | {'int': 3969} |
| `chromeRendererMaxPssKb` | {'int': 3969} |
| `chromeRendererPssKb` | {'int': 3969} |
| `chromeRenderers` | {'int': 3969} |
| `chromeTabs` | {'int': 3969} |
| `chromeTabsProbedProfiles` | {'int': 3969} |
| `chromeUtilityPssKb` | {'int': 3969} |
| `desktopPssKb` | {'int': 3969} |
| `hostPssKb` | {'int': 3969} |
| `kind` | {'str': 3969} |
| `memAvailableKb` | {'int': 3969} |
| `memTotalKb` | {'int': 3969} |
| `otherPssKb` | {'int': 3969} |
| `processes` | {'int': 3969} |
| `pssFallbackProcesses` | {'int': 3969} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
