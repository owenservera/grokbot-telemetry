# sandbox_telemetry_parse — 2026-11-25 16:04:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2823454 lines=6255
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6240 |
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
| `chromeBrowserPssKb` | {'int': 6240} |
| `chromeGpuPssKb` | {'int': 6240} |
| `chromeOtherPssKb` | {'int': 6240} |
| `chromeProcesses` | {'int': 6240} |
| `chromeProfiles` | {'int': 6240} |
| `chromeRendererMaxPssKb` | {'int': 6240} |
| `chromeRendererPssKb` | {'int': 6240} |
| `chromeRenderers` | {'int': 6240} |
| `chromeTabs` | {'int': 6240} |
| `chromeTabsProbedProfiles` | {'int': 6240} |
| `chromeUtilityPssKb` | {'int': 6240} |
| `desktopPssKb` | {'int': 6240} |
| `hostPssKb` | {'int': 6240} |
| `kind` | {'str': 6240} |
| `memAvailableKb` | {'int': 6240} |
| `memTotalKb` | {'int': 6240} |
| `otherPssKb` | {'int': 6240} |
| `processes` | {'int': 6240} |
| `pssFallbackProcesses` | {'int': 6240} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
