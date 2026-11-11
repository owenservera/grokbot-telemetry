# sandbox_telemetry_parse — 2026-11-11 12:42:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1636290 lines=3624
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3615 |
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
| `chromeBrowserPssKb` | {'int': 3615} |
| `chromeGpuPssKb` | {'int': 3615} |
| `chromeOtherPssKb` | {'int': 3615} |
| `chromeProcesses` | {'int': 3615} |
| `chromeProfiles` | {'int': 3615} |
| `chromeRendererMaxPssKb` | {'int': 3615} |
| `chromeRendererPssKb` | {'int': 3615} |
| `chromeRenderers` | {'int': 3615} |
| `chromeTabs` | {'int': 3615} |
| `chromeTabsProbedProfiles` | {'int': 3615} |
| `chromeUtilityPssKb` | {'int': 3615} |
| `desktopPssKb` | {'int': 3615} |
| `hostPssKb` | {'int': 3615} |
| `kind` | {'str': 3615} |
| `memAvailableKb` | {'int': 3615} |
| `memTotalKb` | {'int': 3615} |
| `otherPssKb` | {'int': 3615} |
| `processes` | {'int': 3615} |
| `pssFallbackProcesses` | {'int': 3615} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
