# sandbox_telemetry_parse — 2026-11-20 17:22:51 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1813628 lines=4021
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4008 |
| `egress_tunnel` | 9 |
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
| `attempt` | {'int': 9} |
| `exitStatus` | {'int': 4} |
| `kind` | {'str': 9} |
| `outcome` | {'str': 9} |
| `runtimeS` | {'int': 4} |

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
| `chromeBrowserPssKb` | {'int': 4008} |
| `chromeGpuPssKb` | {'int': 4008} |
| `chromeOtherPssKb` | {'int': 4008} |
| `chromeProcesses` | {'int': 4008} |
| `chromeProfiles` | {'int': 4008} |
| `chromeRendererMaxPssKb` | {'int': 4008} |
| `chromeRendererPssKb` | {'int': 4008} |
| `chromeRenderers` | {'int': 4008} |
| `chromeTabs` | {'int': 4008} |
| `chromeTabsProbedProfiles` | {'int': 4008} |
| `chromeUtilityPssKb` | {'int': 4008} |
| `desktopPssKb` | {'int': 4008} |
| `hostPssKb` | {'int': 4008} |
| `kind` | {'str': 4008} |
| `memAvailableKb` | {'int': 4008} |
| `memTotalKb` | {'int': 4008} |
| `otherPssKb` | {'int': 4008} |
| `processes` | {'int': 4008} |
| `pssFallbackProcesses` | {'int': 4008} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
