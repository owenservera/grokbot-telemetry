# sandbox_telemetry_parse — 2026-11-07 06:03:04 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=334977 lines=748
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 739 |
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
| `chromeBrowserPssKb` | {'int': 739} |
| `chromeGpuPssKb` | {'int': 739} |
| `chromeOtherPssKb` | {'int': 739} |
| `chromeProcesses` | {'int': 739} |
| `chromeProfiles` | {'int': 739} |
| `chromeRendererMaxPssKb` | {'int': 739} |
| `chromeRendererPssKb` | {'int': 739} |
| `chromeRenderers` | {'int': 739} |
| `chromeTabs` | {'int': 739} |
| `chromeTabsProbedProfiles` | {'int': 739} |
| `chromeUtilityPssKb` | {'int': 739} |
| `desktopPssKb` | {'int': 739} |
| `hostPssKb` | {'int': 739} |
| `kind` | {'str': 739} |
| `memAvailableKb` | {'int': 739} |
| `memTotalKb` | {'int': 739} |
| `otherPssKb` | {'int': 739} |
| `processes` | {'int': 739} |
| `pssFallbackProcesses` | {'int': 739} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
