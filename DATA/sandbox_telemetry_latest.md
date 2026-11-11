# sandbox_telemetry_parse — 2026-11-11 20:28:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1804625 lines=3996
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3987 |
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
| `chromeBrowserPssKb` | {'int': 3987} |
| `chromeGpuPssKb` | {'int': 3987} |
| `chromeOtherPssKb` | {'int': 3987} |
| `chromeProcesses` | {'int': 3987} |
| `chromeProfiles` | {'int': 3987} |
| `chromeRendererMaxPssKb` | {'int': 3987} |
| `chromeRendererPssKb` | {'int': 3987} |
| `chromeRenderers` | {'int': 3987} |
| `chromeTabs` | {'int': 3987} |
| `chromeTabsProbedProfiles` | {'int': 3987} |
| `chromeUtilityPssKb` | {'int': 3987} |
| `desktopPssKb` | {'int': 3987} |
| `hostPssKb` | {'int': 3987} |
| `kind` | {'str': 3987} |
| `memAvailableKb` | {'int': 3987} |
| `memTotalKb` | {'int': 3987} |
| `otherPssKb` | {'int': 3987} |
| `processes` | {'int': 3987} |
| `pssFallbackProcesses` | {'int': 3987} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
