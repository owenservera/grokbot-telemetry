# sandbox_telemetry_parse — 2026-11-10 21:49:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1338180 lines=2965
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2956 |
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
| `chromeBrowserPssKb` | {'int': 2956} |
| `chromeGpuPssKb` | {'int': 2956} |
| `chromeOtherPssKb` | {'int': 2956} |
| `chromeProcesses` | {'int': 2956} |
| `chromeProfiles` | {'int': 2956} |
| `chromeRendererMaxPssKb` | {'int': 2956} |
| `chromeRendererPssKb` | {'int': 2956} |
| `chromeRenderers` | {'int': 2956} |
| `chromeTabs` | {'int': 2956} |
| `chromeTabsProbedProfiles` | {'int': 2956} |
| `chromeUtilityPssKb` | {'int': 2956} |
| `desktopPssKb` | {'int': 2956} |
| `hostPssKb` | {'int': 2956} |
| `kind` | {'str': 2956} |
| `memAvailableKb` | {'int': 2956} |
| `memTotalKb` | {'int': 2956} |
| `otherPssKb` | {'int': 2956} |
| `processes` | {'int': 2956} |
| `pssFallbackProcesses` | {'int': 2956} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
