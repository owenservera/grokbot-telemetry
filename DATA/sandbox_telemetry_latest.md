# sandbox_telemetry_parse — 2026-11-20 00:13:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1504162 lines=3335
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3324 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3324} |
| `chromeGpuPssKb` | {'int': 3324} |
| `chromeOtherPssKb` | {'int': 3324} |
| `chromeProcesses` | {'int': 3324} |
| `chromeProfiles` | {'int': 3324} |
| `chromeRendererMaxPssKb` | {'int': 3324} |
| `chromeRendererPssKb` | {'int': 3324} |
| `chromeRenderers` | {'int': 3324} |
| `chromeTabs` | {'int': 3324} |
| `chromeTabsProbedProfiles` | {'int': 3324} |
| `chromeUtilityPssKb` | {'int': 3324} |
| `desktopPssKb` | {'int': 3324} |
| `hostPssKb` | {'int': 3324} |
| `kind` | {'str': 3324} |
| `memAvailableKb` | {'int': 3324} |
| `memTotalKb` | {'int': 3324} |
| `otherPssKb` | {'int': 3324} |
| `processes` | {'int': 3324} |
| `pssFallbackProcesses` | {'int': 3324} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
