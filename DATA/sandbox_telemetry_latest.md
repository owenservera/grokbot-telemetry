# sandbox_telemetry_parse — 2026-11-20 15:47:33 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1784964 lines=3956
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3945 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3945} |
| `chromeGpuPssKb` | {'int': 3945} |
| `chromeOtherPssKb` | {'int': 3945} |
| `chromeProcesses` | {'int': 3945} |
| `chromeProfiles` | {'int': 3945} |
| `chromeRendererMaxPssKb` | {'int': 3945} |
| `chromeRendererPssKb` | {'int': 3945} |
| `chromeRenderers` | {'int': 3945} |
| `chromeTabs` | {'int': 3945} |
| `chromeTabsProbedProfiles` | {'int': 3945} |
| `chromeUtilityPssKb` | {'int': 3945} |
| `desktopPssKb` | {'int': 3945} |
| `hostPssKb` | {'int': 3945} |
| `kind` | {'str': 3945} |
| `memAvailableKb` | {'int': 3945} |
| `memTotalKb` | {'int': 3945} |
| `otherPssKb` | {'int': 3945} |
| `processes` | {'int': 3945} |
| `pssFallbackProcesses` | {'int': 3945} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
