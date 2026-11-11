# sandbox_telemetry_parse — 2026-11-11 07:09:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1520893 lines=3369
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3360 |
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
| `chromeBrowserPssKb` | {'int': 3360} |
| `chromeGpuPssKb` | {'int': 3360} |
| `chromeOtherPssKb` | {'int': 3360} |
| `chromeProcesses` | {'int': 3360} |
| `chromeProfiles` | {'int': 3360} |
| `chromeRendererMaxPssKb` | {'int': 3360} |
| `chromeRendererPssKb` | {'int': 3360} |
| `chromeRenderers` | {'int': 3360} |
| `chromeTabs` | {'int': 3360} |
| `chromeTabsProbedProfiles` | {'int': 3360} |
| `chromeUtilityPssKb` | {'int': 3360} |
| `desktopPssKb` | {'int': 3360} |
| `hostPssKb` | {'int': 3360} |
| `kind` | {'str': 3360} |
| `memAvailableKb` | {'int': 3360} |
| `memTotalKb` | {'int': 3360} |
| `otherPssKb` | {'int': 3360} |
| `processes` | {'int': 3360} |
| `pssFallbackProcesses` | {'int': 3360} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
