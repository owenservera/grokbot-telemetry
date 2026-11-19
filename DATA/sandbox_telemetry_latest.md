# sandbox_telemetry_parse — 2026-11-19 11:45:38 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1257399 lines=2788
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2779 |
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
| `chromeBrowserPssKb` | {'int': 2779} |
| `chromeGpuPssKb` | {'int': 2779} |
| `chromeOtherPssKb` | {'int': 2779} |
| `chromeProcesses` | {'int': 2779} |
| `chromeProfiles` | {'int': 2779} |
| `chromeRendererMaxPssKb` | {'int': 2779} |
| `chromeRendererPssKb` | {'int': 2779} |
| `chromeRenderers` | {'int': 2779} |
| `chromeTabs` | {'int': 2779} |
| `chromeTabsProbedProfiles` | {'int': 2779} |
| `chromeUtilityPssKb` | {'int': 2779} |
| `desktopPssKb` | {'int': 2779} |
| `hostPssKb` | {'int': 2779} |
| `kind` | {'str': 2779} |
| `memAvailableKb` | {'int': 2779} |
| `memTotalKb` | {'int': 2779} |
| `otherPssKb` | {'int': 2779} |
| `processes` | {'int': 2779} |
| `pssFallbackProcesses` | {'int': 2779} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
