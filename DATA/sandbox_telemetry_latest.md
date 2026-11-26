# sandbox_telemetry_parse — 2026-11-26 05:51:29 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3103864 lines=6875
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6860 |
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
| `chromeBrowserPssKb` | {'int': 6860} |
| `chromeGpuPssKb` | {'int': 6860} |
| `chromeOtherPssKb` | {'int': 6860} |
| `chromeProcesses` | {'int': 6860} |
| `chromeProfiles` | {'int': 6860} |
| `chromeRendererMaxPssKb` | {'int': 6860} |
| `chromeRendererPssKb` | {'int': 6860} |
| `chromeRenderers` | {'int': 6860} |
| `chromeTabs` | {'int': 6860} |
| `chromeTabsProbedProfiles` | {'int': 6860} |
| `chromeUtilityPssKb` | {'int': 6860} |
| `desktopPssKb` | {'int': 6860} |
| `hostPssKb` | {'int': 6860} |
| `kind` | {'str': 6860} |
| `memAvailableKb` | {'int': 6860} |
| `memTotalKb` | {'int': 6860} |
| `otherPssKb` | {'int': 6860} |
| `processes` | {'int': 6860} |
| `pssFallbackProcesses` | {'int': 6860} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
