# sandbox_telemetry_parse — 2026-11-10 20:47:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1313729 lines=2911
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2902 |
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
| `chromeBrowserPssKb` | {'int': 2902} |
| `chromeGpuPssKb` | {'int': 2902} |
| `chromeOtherPssKb` | {'int': 2902} |
| `chromeProcesses` | {'int': 2902} |
| `chromeProfiles` | {'int': 2902} |
| `chromeRendererMaxPssKb` | {'int': 2902} |
| `chromeRendererPssKb` | {'int': 2902} |
| `chromeRenderers` | {'int': 2902} |
| `chromeTabs` | {'int': 2902} |
| `chromeTabsProbedProfiles` | {'int': 2902} |
| `chromeUtilityPssKb` | {'int': 2902} |
| `desktopPssKb` | {'int': 2902} |
| `hostPssKb` | {'int': 2902} |
| `kind` | {'str': 2902} |
| `memAvailableKb` | {'int': 2902} |
| `memTotalKb` | {'int': 2902} |
| `otherPssKb` | {'int': 2902} |
| `processes` | {'int': 2902} |
| `pssFallbackProcesses` | {'int': 2902} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
