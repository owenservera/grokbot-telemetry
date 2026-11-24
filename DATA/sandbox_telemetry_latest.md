# sandbox_telemetry_parse — 2026-11-24 13:30:16 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2303238 lines=5105
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5090 |
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
| `chromeBrowserPssKb` | {'int': 5090} |
| `chromeGpuPssKb` | {'int': 5090} |
| `chromeOtherPssKb` | {'int': 5090} |
| `chromeProcesses` | {'int': 5090} |
| `chromeProfiles` | {'int': 5090} |
| `chromeRendererMaxPssKb` | {'int': 5090} |
| `chromeRendererPssKb` | {'int': 5090} |
| `chromeRenderers` | {'int': 5090} |
| `chromeTabs` | {'int': 5090} |
| `chromeTabsProbedProfiles` | {'int': 5090} |
| `chromeUtilityPssKb` | {'int': 5090} |
| `desktopPssKb` | {'int': 5090} |
| `hostPssKb` | {'int': 5090} |
| `kind` | {'str': 5090} |
| `memAvailableKb` | {'int': 5090} |
| `memTotalKb` | {'int': 5090} |
| `otherPssKb` | {'int': 5090} |
| `processes` | {'int': 5090} |
| `pssFallbackProcesses` | {'int': 5090} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
