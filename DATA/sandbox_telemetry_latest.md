# sandbox_telemetry_parse — 2026-11-26 06:53:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3127847 lines=6928
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6913 |
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
| `chromeBrowserPssKb` | {'int': 6913} |
| `chromeGpuPssKb` | {'int': 6913} |
| `chromeOtherPssKb` | {'int': 6913} |
| `chromeProcesses` | {'int': 6913} |
| `chromeProfiles` | {'int': 6913} |
| `chromeRendererMaxPssKb` | {'int': 6913} |
| `chromeRendererPssKb` | {'int': 6913} |
| `chromeRenderers` | {'int': 6913} |
| `chromeTabs` | {'int': 6913} |
| `chromeTabsProbedProfiles` | {'int': 6913} |
| `chromeUtilityPssKb` | {'int': 6913} |
| `desktopPssKb` | {'int': 6913} |
| `hostPssKb` | {'int': 6913} |
| `kind` | {'str': 6913} |
| `memAvailableKb` | {'int': 6913} |
| `memTotalKb` | {'int': 6913} |
| `otherPssKb` | {'int': 6913} |
| `processes` | {'int': 6913} |
| `pssFallbackProcesses` | {'int': 6913} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
