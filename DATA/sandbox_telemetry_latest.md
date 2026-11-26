# sandbox_telemetry_parse — 2026-11-26 05:28:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3095723 lines=6857
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6842 |
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
| `chromeBrowserPssKb` | {'int': 6842} |
| `chromeGpuPssKb` | {'int': 6842} |
| `chromeOtherPssKb` | {'int': 6842} |
| `chromeProcesses` | {'int': 6842} |
| `chromeProfiles` | {'int': 6842} |
| `chromeRendererMaxPssKb` | {'int': 6842} |
| `chromeRendererPssKb` | {'int': 6842} |
| `chromeRenderers` | {'int': 6842} |
| `chromeTabs` | {'int': 6842} |
| `chromeTabsProbedProfiles` | {'int': 6842} |
| `chromeUtilityPssKb` | {'int': 6842} |
| `desktopPssKb` | {'int': 6842} |
| `hostPssKb` | {'int': 6842} |
| `kind` | {'str': 6842} |
| `memAvailableKb` | {'int': 6842} |
| `memTotalKb` | {'int': 6842} |
| `otherPssKb` | {'int': 6842} |
| `processes` | {'int': 6842} |
| `pssFallbackProcesses` | {'int': 6842} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
