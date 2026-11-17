# sandbox_telemetry_parse — 2026-11-17 09:25:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=333818 lines=744
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 737 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 737} |
| `chromeGpuPssKb` | {'int': 737} |
| `chromeOtherPssKb` | {'int': 737} |
| `chromeProcesses` | {'int': 737} |
| `chromeProfiles` | {'int': 737} |
| `chromeRendererMaxPssKb` | {'int': 737} |
| `chromeRendererPssKb` | {'int': 737} |
| `chromeRenderers` | {'int': 737} |
| `chromeTabs` | {'int': 737} |
| `chromeTabsProbedProfiles` | {'int': 737} |
| `chromeUtilityPssKb` | {'int': 737} |
| `desktopPssKb` | {'int': 737} |
| `hostPssKb` | {'int': 737} |
| `kind` | {'str': 737} |
| `memAvailableKb` | {'int': 737} |
| `memTotalKb` | {'int': 737} |
| `otherPssKb` | {'int': 737} |
| `processes` | {'int': 737} |
| `pssFallbackProcesses` | {'int': 737} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
