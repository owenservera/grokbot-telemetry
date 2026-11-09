# sandbox_telemetry_parse — 2026-11-09 09:49:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=599596 lines=1333
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1324 |
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
| `chromeBrowserPssKb` | {'int': 1324} |
| `chromeGpuPssKb` | {'int': 1324} |
| `chromeOtherPssKb` | {'int': 1324} |
| `chromeProcesses` | {'int': 1324} |
| `chromeProfiles` | {'int': 1324} |
| `chromeRendererMaxPssKb` | {'int': 1324} |
| `chromeRendererPssKb` | {'int': 1324} |
| `chromeRenderers` | {'int': 1324} |
| `chromeTabs` | {'int': 1324} |
| `chromeTabsProbedProfiles` | {'int': 1324} |
| `chromeUtilityPssKb` | {'int': 1324} |
| `desktopPssKb` | {'int': 1324} |
| `hostPssKb` | {'int': 1324} |
| `kind` | {'str': 1324} |
| `memAvailableKb` | {'int': 1324} |
| `memTotalKb` | {'int': 1324} |
| `otherPssKb` | {'int': 1324} |
| `processes` | {'int': 1324} |
| `pssFallbackProcesses` | {'int': 1324} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
