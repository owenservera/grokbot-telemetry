# sandbox_telemetry_parse — 2026-11-10 20:10:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1299245 lines=2879
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2870 |
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
| `chromeBrowserPssKb` | {'int': 2870} |
| `chromeGpuPssKb` | {'int': 2870} |
| `chromeOtherPssKb` | {'int': 2870} |
| `chromeProcesses` | {'int': 2870} |
| `chromeProfiles` | {'int': 2870} |
| `chromeRendererMaxPssKb` | {'int': 2870} |
| `chromeRendererPssKb` | {'int': 2870} |
| `chromeRenderers` | {'int': 2870} |
| `chromeTabs` | {'int': 2870} |
| `chromeTabsProbedProfiles` | {'int': 2870} |
| `chromeUtilityPssKb` | {'int': 2870} |
| `desktopPssKb` | {'int': 2870} |
| `hostPssKb` | {'int': 2870} |
| `kind` | {'str': 2870} |
| `memAvailableKb` | {'int': 2870} |
| `memTotalKb` | {'int': 2870} |
| `otherPssKb` | {'int': 2870} |
| `processes` | {'int': 2870} |
| `pssFallbackProcesses` | {'int': 2870} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
