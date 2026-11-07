# sandbox_telemetry_parse — 2026-11-07 11:10:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=433108 lines=965
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 956 |
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
| `chromeBrowserPssKb` | {'int': 956} |
| `chromeGpuPssKb` | {'int': 956} |
| `chromeOtherPssKb` | {'int': 956} |
| `chromeProcesses` | {'int': 956} |
| `chromeProfiles` | {'int': 956} |
| `chromeRendererMaxPssKb` | {'int': 956} |
| `chromeRendererPssKb` | {'int': 956} |
| `chromeRenderers` | {'int': 956} |
| `chromeTabs` | {'int': 956} |
| `chromeTabsProbedProfiles` | {'int': 956} |
| `chromeUtilityPssKb` | {'int': 956} |
| `desktopPssKb` | {'int': 956} |
| `hostPssKb` | {'int': 956} |
| `kind` | {'str': 956} |
| `memAvailableKb` | {'int': 956} |
| `memTotalKb` | {'int': 956} |
| `otherPssKb` | {'int': 956} |
| `processes` | {'int': 956} |
| `pssFallbackProcesses` | {'int': 956} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
