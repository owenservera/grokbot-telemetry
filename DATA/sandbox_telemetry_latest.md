# sandbox_telemetry_parse — 2026-11-10 14:43:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1183802 lines=2624
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2615 |
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
| `chromeBrowserPssKb` | {'int': 2615} |
| `chromeGpuPssKb` | {'int': 2615} |
| `chromeOtherPssKb` | {'int': 2615} |
| `chromeProcesses` | {'int': 2615} |
| `chromeProfiles` | {'int': 2615} |
| `chromeRendererMaxPssKb` | {'int': 2615} |
| `chromeRendererPssKb` | {'int': 2615} |
| `chromeRenderers` | {'int': 2615} |
| `chromeTabs` | {'int': 2615} |
| `chromeTabsProbedProfiles` | {'int': 2615} |
| `chromeUtilityPssKb` | {'int': 2615} |
| `desktopPssKb` | {'int': 2615} |
| `hostPssKb` | {'int': 2615} |
| `kind` | {'str': 2615} |
| `memAvailableKb` | {'int': 2615} |
| `memTotalKb` | {'int': 2615} |
| `otherPssKb` | {'int': 2615} |
| `processes` | {'int': 2615} |
| `pssFallbackProcesses` | {'int': 2615} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
