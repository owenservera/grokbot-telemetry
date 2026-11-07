# sandbox_telemetry_parse — 2026-11-07 07:36:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=363002 lines=810
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 801 |
| `egress_tunnel` | 5 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 801} |
| `chromeGpuPssKb` | {'int': 801} |
| `chromeOtherPssKb` | {'int': 801} |
| `chromeProcesses` | {'int': 801} |
| `chromeProfiles` | {'int': 801} |
| `chromeRendererMaxPssKb` | {'int': 801} |
| `chromeRendererPssKb` | {'int': 801} |
| `chromeRenderers` | {'int': 801} |
| `chromeTabs` | {'int': 801} |
| `chromeTabsProbedProfiles` | {'int': 801} |
| `chromeUtilityPssKb` | {'int': 801} |
| `desktopPssKb` | {'int': 801} |
| `hostPssKb` | {'int': 801} |
| `kind` | {'str': 801} |
| `memAvailableKb` | {'int': 801} |
| `memTotalKb` | {'int': 801} |
| `otherPssKb` | {'int': 801} |
| `processes` | {'int': 801} |
| `pssFallbackProcesses` | {'int': 801} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
