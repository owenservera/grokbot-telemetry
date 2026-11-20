# sandbox_telemetry_parse — 2026-11-20 12:04:11 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1703524 lines=3776
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3765 |
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
| `chromeBrowserPssKb` | {'int': 3765} |
| `chromeGpuPssKb` | {'int': 3765} |
| `chromeOtherPssKb` | {'int': 3765} |
| `chromeProcesses` | {'int': 3765} |
| `chromeProfiles` | {'int': 3765} |
| `chromeRendererMaxPssKb` | {'int': 3765} |
| `chromeRendererPssKb` | {'int': 3765} |
| `chromeRenderers` | {'int': 3765} |
| `chromeTabs` | {'int': 3765} |
| `chromeTabsProbedProfiles` | {'int': 3765} |
| `chromeUtilityPssKb` | {'int': 3765} |
| `desktopPssKb` | {'int': 3765} |
| `hostPssKb` | {'int': 3765} |
| `kind` | {'str': 3765} |
| `memAvailableKb` | {'int': 3765} |
| `memTotalKb` | {'int': 3765} |
| `otherPssKb` | {'int': 3765} |
| `processes` | {'int': 3765} |
| `pssFallbackProcesses` | {'int': 3765} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
