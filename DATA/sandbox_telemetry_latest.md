# sandbox_telemetry_parse — 2026-11-16 19:23:10 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=92366 lines=210
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 203 |
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
| `chromeBrowserPssKb` | {'int': 203} |
| `chromeGpuPssKb` | {'int': 203} |
| `chromeOtherPssKb` | {'int': 203} |
| `chromeProcesses` | {'int': 203} |
| `chromeProfiles` | {'int': 203} |
| `chromeRendererMaxPssKb` | {'int': 203} |
| `chromeRendererPssKb` | {'int': 203} |
| `chromeRenderers` | {'int': 203} |
| `chromeTabs` | {'int': 203} |
| `chromeTabsProbedProfiles` | {'int': 203} |
| `chromeUtilityPssKb` | {'int': 203} |
| `desktopPssKb` | {'int': 203} |
| `hostPssKb` | {'int': 203} |
| `kind` | {'str': 203} |
| `memAvailableKb` | {'int': 203} |
| `memTotalKb` | {'int': 203} |
| `otherPssKb` | {'int': 203} |
| `processes` | {'int': 203} |
| `pssFallbackProcesses` | {'int': 203} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
