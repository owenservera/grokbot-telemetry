# sandbox_telemetry_parse — 2026-11-10 22:03:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1344972 lines=2980
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2971 |
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
| `chromeBrowserPssKb` | {'int': 2971} |
| `chromeGpuPssKb` | {'int': 2971} |
| `chromeOtherPssKb` | {'int': 2971} |
| `chromeProcesses` | {'int': 2971} |
| `chromeProfiles` | {'int': 2971} |
| `chromeRendererMaxPssKb` | {'int': 2971} |
| `chromeRendererPssKb` | {'int': 2971} |
| `chromeRenderers` | {'int': 2971} |
| `chromeTabs` | {'int': 2971} |
| `chromeTabsProbedProfiles` | {'int': 2971} |
| `chromeUtilityPssKb` | {'int': 2971} |
| `desktopPssKb` | {'int': 2971} |
| `hostPssKb` | {'int': 2971} |
| `kind` | {'str': 2971} |
| `memAvailableKb` | {'int': 2971} |
| `memTotalKb` | {'int': 2971} |
| `otherPssKb` | {'int': 2971} |
| `processes` | {'int': 2971} |
| `pssFallbackProcesses` | {'int': 2971} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
