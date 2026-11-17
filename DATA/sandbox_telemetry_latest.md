# sandbox_telemetry_parse — 2026-11-17 19:06:04 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=499285 lines=1110
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1103 |
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
| `chromeBrowserPssKb` | {'int': 1103} |
| `chromeGpuPssKb` | {'int': 1103} |
| `chromeOtherPssKb` | {'int': 1103} |
| `chromeProcesses` | {'int': 1103} |
| `chromeProfiles` | {'int': 1103} |
| `chromeRendererMaxPssKb` | {'int': 1103} |
| `chromeRendererPssKb` | {'int': 1103} |
| `chromeRenderers` | {'int': 1103} |
| `chromeTabs` | {'int': 1103} |
| `chromeTabsProbedProfiles` | {'int': 1103} |
| `chromeUtilityPssKb` | {'int': 1103} |
| `desktopPssKb` | {'int': 1103} |
| `hostPssKb` | {'int': 1103} |
| `kind` | {'str': 1103} |
| `memAvailableKb` | {'int': 1103} |
| `memTotalKb` | {'int': 1103} |
| `otherPssKb` | {'int': 1103} |
| `processes` | {'int': 1103} |
| `pssFallbackProcesses` | {'int': 1103} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
