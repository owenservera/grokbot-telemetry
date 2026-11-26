# sandbox_telemetry_parse — 2026-11-26 04:01:11 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3061334 lines=6781
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6766 |
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
| `chromeBrowserPssKb` | {'int': 6766} |
| `chromeGpuPssKb` | {'int': 6766} |
| `chromeOtherPssKb` | {'int': 6766} |
| `chromeProcesses` | {'int': 6766} |
| `chromeProfiles` | {'int': 6766} |
| `chromeRendererMaxPssKb` | {'int': 6766} |
| `chromeRendererPssKb` | {'int': 6766} |
| `chromeRenderers` | {'int': 6766} |
| `chromeTabs` | {'int': 6766} |
| `chromeTabsProbedProfiles` | {'int': 6766} |
| `chromeUtilityPssKb` | {'int': 6766} |
| `desktopPssKb` | {'int': 6766} |
| `hostPssKb` | {'int': 6766} |
| `kind` | {'str': 6766} |
| `memAvailableKb` | {'int': 6766} |
| `memTotalKb` | {'int': 6766} |
| `otherPssKb` | {'int': 6766} |
| `processes` | {'int': 6766} |
| `pssFallbackProcesses` | {'int': 6766} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
