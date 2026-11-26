# sandbox_telemetry_parse — 2026-11-26 07:30:17 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3142327 lines=6960
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6945 |
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
| `chromeBrowserPssKb` | {'int': 6945} |
| `chromeGpuPssKb` | {'int': 6945} |
| `chromeOtherPssKb` | {'int': 6945} |
| `chromeProcesses` | {'int': 6945} |
| `chromeProfiles` | {'int': 6945} |
| `chromeRendererMaxPssKb` | {'int': 6945} |
| `chromeRendererPssKb` | {'int': 6945} |
| `chromeRenderers` | {'int': 6945} |
| `chromeTabs` | {'int': 6945} |
| `chromeTabsProbedProfiles` | {'int': 6945} |
| `chromeUtilityPssKb` | {'int': 6945} |
| `desktopPssKb` | {'int': 6945} |
| `hostPssKb` | {'int': 6945} |
| `kind` | {'str': 6945} |
| `memAvailableKb` | {'int': 6945} |
| `memTotalKb` | {'int': 6945} |
| `otherPssKb` | {'int': 6945} |
| `processes` | {'int': 6945} |
| `pssFallbackProcesses` | {'int': 6945} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
