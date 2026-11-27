# sandbox_telemetry_parse — 2026-11-27 03:22:38 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=212774 lines=477
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 469 |
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
| `chromeBrowserPssKb` | {'int': 469} |
| `chromeGpuPssKb` | {'int': 469} |
| `chromeOtherPssKb` | {'int': 469} |
| `chromeProcesses` | {'int': 469} |
| `chromeProfiles` | {'int': 469} |
| `chromeRendererMaxPssKb` | {'int': 469} |
| `chromeRendererPssKb` | {'int': 469} |
| `chromeRenderers` | {'int': 469} |
| `chromeTabs` | {'int': 469} |
| `chromeTabsProbedProfiles` | {'int': 469} |
| `chromeUtilityPssKb` | {'int': 469} |
| `desktopPssKb` | {'int': 469} |
| `hostPssKb` | {'int': 469} |
| `kind` | {'str': 469} |
| `memAvailableKb` | {'int': 469} |
| `memTotalKb` | {'int': 469} |
| `otherPssKb` | {'int': 469} |
| `processes` | {'int': 469} |
| `pssFallbackProcesses` | {'int': 469} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
