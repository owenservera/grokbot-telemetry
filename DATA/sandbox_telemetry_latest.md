# sandbox_telemetry_parse — 2026-11-11 11:21:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1604594 lines=3554
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3545 |
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
| `chromeBrowserPssKb` | {'int': 3545} |
| `chromeGpuPssKb` | {'int': 3545} |
| `chromeOtherPssKb` | {'int': 3545} |
| `chromeProcesses` | {'int': 3545} |
| `chromeProfiles` | {'int': 3545} |
| `chromeRendererMaxPssKb` | {'int': 3545} |
| `chromeRendererPssKb` | {'int': 3545} |
| `chromeRenderers` | {'int': 3545} |
| `chromeTabs` | {'int': 3545} |
| `chromeTabsProbedProfiles` | {'int': 3545} |
| `chromeUtilityPssKb` | {'int': 3545} |
| `desktopPssKb` | {'int': 3545} |
| `hostPssKb` | {'int': 3545} |
| `kind` | {'str': 3545} |
| `memAvailableKb` | {'int': 3545} |
| `memTotalKb` | {'int': 3545} |
| `otherPssKb` | {'int': 3545} |
| `processes` | {'int': 3545} |
| `pssFallbackProcesses` | {'int': 3545} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
