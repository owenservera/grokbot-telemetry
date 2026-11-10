# sandbox_telemetry_parse — 2026-11-10 21:42:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1335917 lines=2960
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2951 |
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
| `chromeBrowserPssKb` | {'int': 2951} |
| `chromeGpuPssKb` | {'int': 2951} |
| `chromeOtherPssKb` | {'int': 2951} |
| `chromeProcesses` | {'int': 2951} |
| `chromeProfiles` | {'int': 2951} |
| `chromeRendererMaxPssKb` | {'int': 2951} |
| `chromeRendererPssKb` | {'int': 2951} |
| `chromeRenderers` | {'int': 2951} |
| `chromeTabs` | {'int': 2951} |
| `chromeTabsProbedProfiles` | {'int': 2951} |
| `chromeUtilityPssKb` | {'int': 2951} |
| `desktopPssKb` | {'int': 2951} |
| `hostPssKb` | {'int': 2951} |
| `kind` | {'str': 2951} |
| `memAvailableKb` | {'int': 2951} |
| `memTotalKb` | {'int': 2951} |
| `otherPssKb` | {'int': 2951} |
| `processes` | {'int': 2951} |
| `pssFallbackProcesses` | {'int': 2951} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
