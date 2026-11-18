# sandbox_telemetry_parse — 2026-11-18 20:16:21 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=962556 lines=2136
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2127 |
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
| `chromeBrowserPssKb` | {'int': 2127} |
| `chromeGpuPssKb` | {'int': 2127} |
| `chromeOtherPssKb` | {'int': 2127} |
| `chromeProcesses` | {'int': 2127} |
| `chromeProfiles` | {'int': 2127} |
| `chromeRendererMaxPssKb` | {'int': 2127} |
| `chromeRendererPssKb` | {'int': 2127} |
| `chromeRenderers` | {'int': 2127} |
| `chromeTabs` | {'int': 2127} |
| `chromeTabsProbedProfiles` | {'int': 2127} |
| `chromeUtilityPssKb` | {'int': 2127} |
| `desktopPssKb` | {'int': 2127} |
| `hostPssKb` | {'int': 2127} |
| `kind` | {'str': 2127} |
| `memAvailableKb` | {'int': 2127} |
| `memTotalKb` | {'int': 2127} |
| `otherPssKb` | {'int': 2127} |
| `processes` | {'int': 2127} |
| `pssFallbackProcesses` | {'int': 2127} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
