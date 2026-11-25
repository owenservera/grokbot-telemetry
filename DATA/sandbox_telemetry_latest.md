# sandbox_telemetry_parse — 2026-11-26 00:46:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3001181 lines=6648
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6633 |
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
| `chromeBrowserPssKb` | {'int': 6633} |
| `chromeGpuPssKb` | {'int': 6633} |
| `chromeOtherPssKb` | {'int': 6633} |
| `chromeProcesses` | {'int': 6633} |
| `chromeProfiles` | {'int': 6633} |
| `chromeRendererMaxPssKb` | {'int': 6633} |
| `chromeRendererPssKb` | {'int': 6633} |
| `chromeRenderers` | {'int': 6633} |
| `chromeTabs` | {'int': 6633} |
| `chromeTabsProbedProfiles` | {'int': 6633} |
| `chromeUtilityPssKb` | {'int': 6633} |
| `desktopPssKb` | {'int': 6633} |
| `hostPssKb` | {'int': 6633} |
| `kind` | {'str': 6633} |
| `memAvailableKb` | {'int': 6633} |
| `memTotalKb` | {'int': 6633} |
| `otherPssKb` | {'int': 6633} |
| `processes` | {'int': 6633} |
| `pssFallbackProcesses` | {'int': 6633} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
