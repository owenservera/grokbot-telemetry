# sandbox_telemetry_parse — 2026-11-11 15:01:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1683787 lines=3729
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3720 |
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
| `chromeBrowserPssKb` | {'int': 3720} |
| `chromeGpuPssKb` | {'int': 3720} |
| `chromeOtherPssKb` | {'int': 3720} |
| `chromeProcesses` | {'int': 3720} |
| `chromeProfiles` | {'int': 3720} |
| `chromeRendererMaxPssKb` | {'int': 3720} |
| `chromeRendererPssKb` | {'int': 3720} |
| `chromeRenderers` | {'int': 3720} |
| `chromeTabs` | {'int': 3720} |
| `chromeTabsProbedProfiles` | {'int': 3720} |
| `chromeUtilityPssKb` | {'int': 3720} |
| `desktopPssKb` | {'int': 3720} |
| `hostPssKb` | {'int': 3720} |
| `kind` | {'str': 3720} |
| `memAvailableKb` | {'int': 3720} |
| `memTotalKb` | {'int': 3720} |
| `otherPssKb` | {'int': 3720} |
| `processes` | {'int': 3720} |
| `pssFallbackProcesses` | {'int': 3720} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
