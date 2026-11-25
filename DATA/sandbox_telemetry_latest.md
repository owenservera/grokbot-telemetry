# sandbox_telemetry_parse — 2026-11-25 22:28:30 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2950971 lines=6537
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6522 |
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
| `chromeBrowserPssKb` | {'int': 6522} |
| `chromeGpuPssKb` | {'int': 6522} |
| `chromeOtherPssKb` | {'int': 6522} |
| `chromeProcesses` | {'int': 6522} |
| `chromeProfiles` | {'int': 6522} |
| `chromeRendererMaxPssKb` | {'int': 6522} |
| `chromeRendererPssKb` | {'int': 6522} |
| `chromeRenderers` | {'int': 6522} |
| `chromeTabs` | {'int': 6522} |
| `chromeTabsProbedProfiles` | {'int': 6522} |
| `chromeUtilityPssKb` | {'int': 6522} |
| `desktopPssKb` | {'int': 6522} |
| `hostPssKb` | {'int': 6522} |
| `kind` | {'str': 6522} |
| `memAvailableKb` | {'int': 6522} |
| `memTotalKb` | {'int': 6522} |
| `otherPssKb` | {'int': 6522} |
| `processes` | {'int': 6522} |
| `pssFallbackProcesses` | {'int': 6522} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
