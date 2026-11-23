# sandbox_telemetry_parse — 2026-11-23 21:38:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1997069 lines=4428
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4413 |
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
| `chromeBrowserPssKb` | {'int': 4413} |
| `chromeGpuPssKb` | {'int': 4413} |
| `chromeOtherPssKb` | {'int': 4413} |
| `chromeProcesses` | {'int': 4413} |
| `chromeProfiles` | {'int': 4413} |
| `chromeRendererMaxPssKb` | {'int': 4413} |
| `chromeRendererPssKb` | {'int': 4413} |
| `chromeRenderers` | {'int': 4413} |
| `chromeTabs` | {'int': 4413} |
| `chromeTabsProbedProfiles` | {'int': 4413} |
| `chromeUtilityPssKb` | {'int': 4413} |
| `desktopPssKb` | {'int': 4413} |
| `hostPssKb` | {'int': 4413} |
| `kind` | {'str': 4413} |
| `memAvailableKb` | {'int': 4413} |
| `memTotalKb` | {'int': 4413} |
| `otherPssKb` | {'int': 4413} |
| `processes` | {'int': 4413} |
| `pssFallbackProcesses` | {'int': 4413} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
