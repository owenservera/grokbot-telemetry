# sandbox_telemetry_parse — 2026-11-20 14:06:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1745594 lines=3869
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3858 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3858} |
| `chromeGpuPssKb` | {'int': 3858} |
| `chromeOtherPssKb` | {'int': 3858} |
| `chromeProcesses` | {'int': 3858} |
| `chromeProfiles` | {'int': 3858} |
| `chromeRendererMaxPssKb` | {'int': 3858} |
| `chromeRendererPssKb` | {'int': 3858} |
| `chromeRenderers` | {'int': 3858} |
| `chromeTabs` | {'int': 3858} |
| `chromeTabsProbedProfiles` | {'int': 3858} |
| `chromeUtilityPssKb` | {'int': 3858} |
| `desktopPssKb` | {'int': 3858} |
| `hostPssKb` | {'int': 3858} |
| `kind` | {'str': 3858} |
| `memAvailableKb` | {'int': 3858} |
| `memTotalKb` | {'int': 3858} |
| `otherPssKb` | {'int': 3858} |
| `processes` | {'int': 3858} |
| `pssFallbackProcesses` | {'int': 3858} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
