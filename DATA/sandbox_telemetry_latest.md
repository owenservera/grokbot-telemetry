# sandbox_telemetry_parse — 2026-11-24 13:27:23 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2301879 lines=5102
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5087 |
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
| `chromeBrowserPssKb` | {'int': 5087} |
| `chromeGpuPssKb` | {'int': 5087} |
| `chromeOtherPssKb` | {'int': 5087} |
| `chromeProcesses` | {'int': 5087} |
| `chromeProfiles` | {'int': 5087} |
| `chromeRendererMaxPssKb` | {'int': 5087} |
| `chromeRendererPssKb` | {'int': 5087} |
| `chromeRenderers` | {'int': 5087} |
| `chromeTabs` | {'int': 5087} |
| `chromeTabsProbedProfiles` | {'int': 5087} |
| `chromeUtilityPssKb` | {'int': 5087} |
| `desktopPssKb` | {'int': 5087} |
| `hostPssKb` | {'int': 5087} |
| `kind` | {'str': 5087} |
| `memAvailableKb` | {'int': 5087} |
| `memTotalKb` | {'int': 5087} |
| `otherPssKb` | {'int': 5087} |
| `processes` | {'int': 5087} |
| `pssFallbackProcesses` | {'int': 5087} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
