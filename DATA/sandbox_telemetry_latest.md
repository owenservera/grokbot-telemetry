# sandbox_telemetry_parse — 2026-11-26 03:18:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3047308 lines=6750
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6735 |
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
| `chromeBrowserPssKb` | {'int': 6735} |
| `chromeGpuPssKb` | {'int': 6735} |
| `chromeOtherPssKb` | {'int': 6735} |
| `chromeProcesses` | {'int': 6735} |
| `chromeProfiles` | {'int': 6735} |
| `chromeRendererMaxPssKb` | {'int': 6735} |
| `chromeRendererPssKb` | {'int': 6735} |
| `chromeRenderers` | {'int': 6735} |
| `chromeTabs` | {'int': 6735} |
| `chromeTabsProbedProfiles` | {'int': 6735} |
| `chromeUtilityPssKb` | {'int': 6735} |
| `desktopPssKb` | {'int': 6735} |
| `hostPssKb` | {'int': 6735} |
| `kind` | {'str': 6735} |
| `memAvailableKb` | {'int': 6735} |
| `memTotalKb` | {'int': 6735} |
| `otherPssKb` | {'int': 6735} |
| `processes` | {'int': 6735} |
| `pssFallbackProcesses` | {'int': 6735} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
