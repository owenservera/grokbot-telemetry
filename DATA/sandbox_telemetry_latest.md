# sandbox_telemetry_parse — 2026-11-11 04:09:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1466634 lines=3249
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3240 |
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
| `chromeBrowserPssKb` | {'int': 3240} |
| `chromeGpuPssKb` | {'int': 3240} |
| `chromeOtherPssKb` | {'int': 3240} |
| `chromeProcesses` | {'int': 3240} |
| `chromeProfiles` | {'int': 3240} |
| `chromeRendererMaxPssKb` | {'int': 3240} |
| `chromeRendererPssKb` | {'int': 3240} |
| `chromeRenderers` | {'int': 3240} |
| `chromeTabs` | {'int': 3240} |
| `chromeTabsProbedProfiles` | {'int': 3240} |
| `chromeUtilityPssKb` | {'int': 3240} |
| `desktopPssKb` | {'int': 3240} |
| `hostPssKb` | {'int': 3240} |
| `kind` | {'str': 3240} |
| `memAvailableKb` | {'int': 3240} |
| `memTotalKb` | {'int': 3240} |
| `otherPssKb` | {'int': 3240} |
| `processes` | {'int': 3240} |
| `pssFallbackProcesses` | {'int': 3240} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
