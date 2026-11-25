# sandbox_telemetry_parse — 2026-11-25 21:54:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2939671 lines=6512
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6497 |
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
| `chromeBrowserPssKb` | {'int': 6497} |
| `chromeGpuPssKb` | {'int': 6497} |
| `chromeOtherPssKb` | {'int': 6497} |
| `chromeProcesses` | {'int': 6497} |
| `chromeProfiles` | {'int': 6497} |
| `chromeRendererMaxPssKb` | {'int': 6497} |
| `chromeRendererPssKb` | {'int': 6497} |
| `chromeRenderers` | {'int': 6497} |
| `chromeTabs` | {'int': 6497} |
| `chromeTabsProbedProfiles` | {'int': 6497} |
| `chromeUtilityPssKb` | {'int': 6497} |
| `desktopPssKb` | {'int': 6497} |
| `hostPssKb` | {'int': 6497} |
| `kind` | {'str': 6497} |
| `memAvailableKb` | {'int': 6497} |
| `memTotalKb` | {'int': 6497} |
| `otherPssKb` | {'int': 6497} |
| `processes` | {'int': 6497} |
| `pssFallbackProcesses` | {'int': 6497} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
