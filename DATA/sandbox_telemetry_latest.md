# sandbox_telemetry_parse — 2026-11-11 23:24:11 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1867996 lines=4136
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4127 |
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
| `chromeBrowserPssKb` | {'int': 4127} |
| `chromeGpuPssKb` | {'int': 4127} |
| `chromeOtherPssKb` | {'int': 4127} |
| `chromeProcesses` | {'int': 4127} |
| `chromeProfiles` | {'int': 4127} |
| `chromeRendererMaxPssKb` | {'int': 4127} |
| `chromeRendererPssKb` | {'int': 4127} |
| `chromeRenderers` | {'int': 4127} |
| `chromeTabs` | {'int': 4127} |
| `chromeTabsProbedProfiles` | {'int': 4127} |
| `chromeUtilityPssKb` | {'int': 4127} |
| `desktopPssKb` | {'int': 4127} |
| `hostPssKb` | {'int': 4127} |
| `kind` | {'str': 4127} |
| `memAvailableKb` | {'int': 4127} |
| `memTotalKb` | {'int': 4127} |
| `otherPssKb` | {'int': 4127} |
| `processes` | {'int': 4127} |
| `pssFallbackProcesses` | {'int': 4127} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
