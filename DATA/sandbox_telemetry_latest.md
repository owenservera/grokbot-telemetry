# sandbox_telemetry_parse — 2026-11-19 18:14:32 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1387463 lines=3077
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3066 |
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
| `chromeBrowserPssKb` | {'int': 3066} |
| `chromeGpuPssKb` | {'int': 3066} |
| `chromeOtherPssKb` | {'int': 3066} |
| `chromeProcesses` | {'int': 3066} |
| `chromeProfiles` | {'int': 3066} |
| `chromeRendererMaxPssKb` | {'int': 3066} |
| `chromeRendererPssKb` | {'int': 3066} |
| `chromeRenderers` | {'int': 3066} |
| `chromeTabs` | {'int': 3066} |
| `chromeTabsProbedProfiles` | {'int': 3066} |
| `chromeUtilityPssKb` | {'int': 3066} |
| `desktopPssKb` | {'int': 3066} |
| `hostPssKb` | {'int': 3066} |
| `kind` | {'str': 3066} |
| `memAvailableKb` | {'int': 3066} |
| `memTotalKb` | {'int': 3066} |
| `otherPssKb` | {'int': 3066} |
| `processes` | {'int': 3066} |
| `pssFallbackProcesses` | {'int': 3066} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
