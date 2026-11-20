# sandbox_telemetry_parse — 2026-11-20 02:44:34 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1544390 lines=3424
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3413 |
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
| `chromeBrowserPssKb` | {'int': 3413} |
| `chromeGpuPssKb` | {'int': 3413} |
| `chromeOtherPssKb` | {'int': 3413} |
| `chromeProcesses` | {'int': 3413} |
| `chromeProfiles` | {'int': 3413} |
| `chromeRendererMaxPssKb` | {'int': 3413} |
| `chromeRendererPssKb` | {'int': 3413} |
| `chromeRenderers` | {'int': 3413} |
| `chromeTabs` | {'int': 3413} |
| `chromeTabsProbedProfiles` | {'int': 3413} |
| `chromeUtilityPssKb` | {'int': 3413} |
| `desktopPssKb` | {'int': 3413} |
| `hostPssKb` | {'int': 3413} |
| `kind` | {'str': 3413} |
| `memAvailableKb` | {'int': 3413} |
| `memTotalKb` | {'int': 3413} |
| `otherPssKb` | {'int': 3413} |
| `processes` | {'int': 3413} |
| `pssFallbackProcesses` | {'int': 3413} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
