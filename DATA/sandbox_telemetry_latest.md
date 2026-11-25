# sandbox_telemetry_parse — 2026-11-25 18:22:54 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2868672 lines=6355
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6340 |
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
| `chromeBrowserPssKb` | {'int': 6340} |
| `chromeGpuPssKb` | {'int': 6340} |
| `chromeOtherPssKb` | {'int': 6340} |
| `chromeProcesses` | {'int': 6340} |
| `chromeProfiles` | {'int': 6340} |
| `chromeRendererMaxPssKb` | {'int': 6340} |
| `chromeRendererPssKb` | {'int': 6340} |
| `chromeRenderers` | {'int': 6340} |
| `chromeTabs` | {'int': 6340} |
| `chromeTabsProbedProfiles` | {'int': 6340} |
| `chromeUtilityPssKb` | {'int': 6340} |
| `desktopPssKb` | {'int': 6340} |
| `hostPssKb` | {'int': 6340} |
| `kind` | {'str': 6340} |
| `memAvailableKb` | {'int': 6340} |
| `memTotalKb` | {'int': 6340} |
| `otherPssKb` | {'int': 6340} |
| `processes` | {'int': 6340} |
| `pssFallbackProcesses` | {'int': 6340} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
