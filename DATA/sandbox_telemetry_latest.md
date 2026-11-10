# sandbox_telemetry_parse — 2026-11-10 11:04:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1109094 lines=2459
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2450 |
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
| `chromeBrowserPssKb` | {'int': 2450} |
| `chromeGpuPssKb` | {'int': 2450} |
| `chromeOtherPssKb` | {'int': 2450} |
| `chromeProcesses` | {'int': 2450} |
| `chromeProfiles` | {'int': 2450} |
| `chromeRendererMaxPssKb` | {'int': 2450} |
| `chromeRendererPssKb` | {'int': 2450} |
| `chromeRenderers` | {'int': 2450} |
| `chromeTabs` | {'int': 2450} |
| `chromeTabsProbedProfiles` | {'int': 2450} |
| `chromeUtilityPssKb` | {'int': 2450} |
| `desktopPssKb` | {'int': 2450} |
| `hostPssKb` | {'int': 2450} |
| `kind` | {'str': 2450} |
| `memAvailableKb` | {'int': 2450} |
| `memTotalKb` | {'int': 2450} |
| `otherPssKb` | {'int': 2450} |
| `processes` | {'int': 2450} |
| `pssFallbackProcesses` | {'int': 2450} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
