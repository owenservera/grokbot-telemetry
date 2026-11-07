# sandbox_telemetry_parse — 2026-11-07 15:08:16 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=511369 lines=1138
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1129 |
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
| `chromeBrowserPssKb` | {'int': 1129} |
| `chromeGpuPssKb` | {'int': 1129} |
| `chromeOtherPssKb` | {'int': 1129} |
| `chromeProcesses` | {'int': 1129} |
| `chromeProfiles` | {'int': 1129} |
| `chromeRendererMaxPssKb` | {'int': 1129} |
| `chromeRendererPssKb` | {'int': 1129} |
| `chromeRenderers` | {'int': 1129} |
| `chromeTabs` | {'int': 1129} |
| `chromeTabsProbedProfiles` | {'int': 1129} |
| `chromeUtilityPssKb` | {'int': 1129} |
| `desktopPssKb` | {'int': 1129} |
| `hostPssKb` | {'int': 1129} |
| `kind` | {'str': 1129} |
| `memAvailableKb` | {'int': 1129} |
| `memTotalKb` | {'int': 1129} |
| `otherPssKb` | {'int': 1129} |
| `processes` | {'int': 1129} |
| `pssFallbackProcesses` | {'int': 1129} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
