# sandbox_telemetry_parse — 2026-11-26 01:05:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3006153 lines=6659
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6644 |
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
| `chromeBrowserPssKb` | {'int': 6644} |
| `chromeGpuPssKb` | {'int': 6644} |
| `chromeOtherPssKb` | {'int': 6644} |
| `chromeProcesses` | {'int': 6644} |
| `chromeProfiles` | {'int': 6644} |
| `chromeRendererMaxPssKb` | {'int': 6644} |
| `chromeRendererPssKb` | {'int': 6644} |
| `chromeRenderers` | {'int': 6644} |
| `chromeTabs` | {'int': 6644} |
| `chromeTabsProbedProfiles` | {'int': 6644} |
| `chromeUtilityPssKb` | {'int': 6644} |
| `desktopPssKb` | {'int': 6644} |
| `hostPssKb` | {'int': 6644} |
| `kind` | {'str': 6644} |
| `memAvailableKb` | {'int': 6644} |
| `memTotalKb` | {'int': 6644} |
| `otherPssKb` | {'int': 6644} |
| `processes` | {'int': 6644} |
| `pssFallbackProcesses` | {'int': 6644} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
