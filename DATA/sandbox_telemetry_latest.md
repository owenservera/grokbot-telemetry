# sandbox_telemetry_parse — 2026-11-24 19:54:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2425488 lines=5375
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5360 |
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
| `chromeBrowserPssKb` | {'int': 5360} |
| `chromeGpuPssKb` | {'int': 5360} |
| `chromeOtherPssKb` | {'int': 5360} |
| `chromeProcesses` | {'int': 5360} |
| `chromeProfiles` | {'int': 5360} |
| `chromeRendererMaxPssKb` | {'int': 5360} |
| `chromeRendererPssKb` | {'int': 5360} |
| `chromeRenderers` | {'int': 5360} |
| `chromeTabs` | {'int': 5360} |
| `chromeTabsProbedProfiles` | {'int': 5360} |
| `chromeUtilityPssKb` | {'int': 5360} |
| `desktopPssKb` | {'int': 5360} |
| `hostPssKb` | {'int': 5360} |
| `kind` | {'str': 5360} |
| `memAvailableKb` | {'int': 5360} |
| `memTotalKb` | {'int': 5360} |
| `otherPssKb` | {'int': 5360} |
| `processes` | {'int': 5360} |
| `pssFallbackProcesses` | {'int': 5360} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
