# sandbox_telemetry_parse — 2026-11-25 18:40:17 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2873644 lines=6366
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6351 |
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
| `chromeBrowserPssKb` | {'int': 6351} |
| `chromeGpuPssKb` | {'int': 6351} |
| `chromeOtherPssKb` | {'int': 6351} |
| `chromeProcesses` | {'int': 6351} |
| `chromeProfiles` | {'int': 6351} |
| `chromeRendererMaxPssKb` | {'int': 6351} |
| `chromeRendererPssKb` | {'int': 6351} |
| `chromeRenderers` | {'int': 6351} |
| `chromeTabs` | {'int': 6351} |
| `chromeTabsProbedProfiles` | {'int': 6351} |
| `chromeUtilityPssKb` | {'int': 6351} |
| `desktopPssKb` | {'int': 6351} |
| `hostPssKb` | {'int': 6351} |
| `kind` | {'str': 6351} |
| `memAvailableKb` | {'int': 6351} |
| `memTotalKb` | {'int': 6351} |
| `otherPssKb` | {'int': 6351} |
| `processes` | {'int': 6351} |
| `pssFallbackProcesses` | {'int': 6351} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
