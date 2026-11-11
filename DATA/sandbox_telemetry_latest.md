# sandbox_telemetry_parse — 2026-11-11 08:18:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1538979 lines=3409
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3400 |
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
| `chromeBrowserPssKb` | {'int': 3400} |
| `chromeGpuPssKb` | {'int': 3400} |
| `chromeOtherPssKb` | {'int': 3400} |
| `chromeProcesses` | {'int': 3400} |
| `chromeProfiles` | {'int': 3400} |
| `chromeRendererMaxPssKb` | {'int': 3400} |
| `chromeRendererPssKb` | {'int': 3400} |
| `chromeRenderers` | {'int': 3400} |
| `chromeTabs` | {'int': 3400} |
| `chromeTabsProbedProfiles` | {'int': 3400} |
| `chromeUtilityPssKb` | {'int': 3400} |
| `desktopPssKb` | {'int': 3400} |
| `hostPssKb` | {'int': 3400} |
| `kind` | {'str': 3400} |
| `memAvailableKb` | {'int': 3400} |
| `memTotalKb` | {'int': 3400} |
| `otherPssKb` | {'int': 3400} |
| `processes` | {'int': 3400} |
| `pssFallbackProcesses` | {'int': 3400} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
