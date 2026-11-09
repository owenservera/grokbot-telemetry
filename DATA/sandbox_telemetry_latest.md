# sandbox_telemetry_parse — 2026-11-09 19:20:30 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=807815 lines=1793
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1784 |
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
| `chromeBrowserPssKb` | {'int': 1784} |
| `chromeGpuPssKb` | {'int': 1784} |
| `chromeOtherPssKb` | {'int': 1784} |
| `chromeProcesses` | {'int': 1784} |
| `chromeProfiles` | {'int': 1784} |
| `chromeRendererMaxPssKb` | {'int': 1784} |
| `chromeRendererPssKb` | {'int': 1784} |
| `chromeRenderers` | {'int': 1784} |
| `chromeTabs` | {'int': 1784} |
| `chromeTabsProbedProfiles` | {'int': 1784} |
| `chromeUtilityPssKb` | {'int': 1784} |
| `desktopPssKb` | {'int': 1784} |
| `hostPssKb` | {'int': 1784} |
| `kind` | {'str': 1784} |
| `memAvailableKb` | {'int': 1784} |
| `memTotalKb` | {'int': 1784} |
| `otherPssKb` | {'int': 1784} |
| `processes` | {'int': 1784} |
| `pssFallbackProcesses` | {'int': 1784} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
