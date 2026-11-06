# sandbox_telemetry_parse — 2026-11-06 19:45:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=138698 lines=314
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 305 |
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
| `chromeBrowserPssKb` | {'int': 305} |
| `chromeGpuPssKb` | {'int': 305} |
| `chromeOtherPssKb` | {'int': 305} |
| `chromeProcesses` | {'int': 305} |
| `chromeProfiles` | {'int': 305} |
| `chromeRendererMaxPssKb` | {'int': 305} |
| `chromeRendererPssKb` | {'int': 305} |
| `chromeRenderers` | {'int': 305} |
| `chromeTabs` | {'int': 305} |
| `chromeTabsProbedProfiles` | {'int': 305} |
| `chromeUtilityPssKb` | {'int': 305} |
| `desktopPssKb` | {'int': 305} |
| `hostPssKb` | {'int': 305} |
| `kind` | {'str': 305} |
| `memAvailableKb` | {'int': 305} |
| `memTotalKb` | {'int': 305} |
| `otherPssKb` | {'int': 305} |
| `processes` | {'int': 305} |
| `pssFallbackProcesses` | {'int': 305} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
