# sandbox_telemetry_parse — 2026-11-28 10:25:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=845755 lines=1876
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1868 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

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
| `chromeBrowserPssKb` | {'int': 1868} |
| `chromeGpuPssKb` | {'int': 1868} |
| `chromeOtherPssKb` | {'int': 1868} |
| `chromeProcesses` | {'int': 1868} |
| `chromeProfiles` | {'int': 1868} |
| `chromeRendererMaxPssKb` | {'int': 1868} |
| `chromeRendererPssKb` | {'int': 1868} |
| `chromeRenderers` | {'int': 1868} |
| `chromeTabs` | {'int': 1868} |
| `chromeTabsProbedProfiles` | {'int': 1868} |
| `chromeUtilityPssKb` | {'int': 1868} |
| `desktopPssKb` | {'int': 1868} |
| `hostPssKb` | {'int': 1868} |
| `kind` | {'str': 1868} |
| `memAvailableKb` | {'int': 1868} |
| `memTotalKb` | {'int': 1868} |
| `otherPssKb` | {'int': 1868} |
| `processes` | {'int': 1868} |
| `pssFallbackProcesses` | {'int': 1868} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
