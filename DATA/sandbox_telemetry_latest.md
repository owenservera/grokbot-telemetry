# sandbox_telemetry_parse — 2026-11-28 15:30:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=946652 lines=2099
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2091 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 2091} |
| `chromeGpuPssKb` | {'int': 2091} |
| `chromeOtherPssKb` | {'int': 2091} |
| `chromeProcesses` | {'int': 2091} |
| `chromeProfiles` | {'int': 2091} |
| `chromeRendererMaxPssKb` | {'int': 2091} |
| `chromeRendererPssKb` | {'int': 2091} |
| `chromeRenderers` | {'int': 2091} |
| `chromeTabs` | {'int': 2091} |
| `chromeTabsProbedProfiles` | {'int': 2091} |
| `chromeUtilityPssKb` | {'int': 2091} |
| `desktopPssKb` | {'int': 2091} |
| `hostPssKb` | {'int': 2091} |
| `kind` | {'str': 2091} |
| `memAvailableKb` | {'int': 2091} |
| `memTotalKb` | {'int': 2091} |
| `otherPssKb` | {'int': 2091} |
| `processes` | {'int': 2091} |
| `pssFallbackProcesses` | {'int': 2091} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
