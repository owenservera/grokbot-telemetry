# sandbox_telemetry_parse — 2026-11-25 08:52:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2681457 lines=5941
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5926 |
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
| `chromeBrowserPssKb` | {'int': 5926} |
| `chromeGpuPssKb` | {'int': 5926} |
| `chromeOtherPssKb` | {'int': 5926} |
| `chromeProcesses` | {'int': 5926} |
| `chromeProfiles` | {'int': 5926} |
| `chromeRendererMaxPssKb` | {'int': 5926} |
| `chromeRendererPssKb` | {'int': 5926} |
| `chromeRenderers` | {'int': 5926} |
| `chromeTabs` | {'int': 5926} |
| `chromeTabsProbedProfiles` | {'int': 5926} |
| `chromeUtilityPssKb` | {'int': 5926} |
| `desktopPssKb` | {'int': 5926} |
| `hostPssKb` | {'int': 5926} |
| `kind` | {'str': 5926} |
| `memAvailableKb` | {'int': 5926} |
| `memTotalKb` | {'int': 5926} |
| `otherPssKb` | {'int': 5926} |
| `processes` | {'int': 5926} |
| `pssFallbackProcesses` | {'int': 5926} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
