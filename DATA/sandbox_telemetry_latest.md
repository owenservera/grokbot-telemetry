# sandbox_telemetry_parse — 2026-11-27 17:44:30 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=526305 lines=1170
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1162 |
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
| `chromeBrowserPssKb` | {'int': 1162} |
| `chromeGpuPssKb` | {'int': 1162} |
| `chromeOtherPssKb` | {'int': 1162} |
| `chromeProcesses` | {'int': 1162} |
| `chromeProfiles` | {'int': 1162} |
| `chromeRendererMaxPssKb` | {'int': 1162} |
| `chromeRendererPssKb` | {'int': 1162} |
| `chromeRenderers` | {'int': 1162} |
| `chromeTabs` | {'int': 1162} |
| `chromeTabsProbedProfiles` | {'int': 1162} |
| `chromeUtilityPssKb` | {'int': 1162} |
| `desktopPssKb` | {'int': 1162} |
| `hostPssKb` | {'int': 1162} |
| `kind` | {'str': 1162} |
| `memAvailableKb` | {'int': 1162} |
| `memTotalKb` | {'int': 1162} |
| `otherPssKb` | {'int': 1162} |
| `processes` | {'int': 1162} |
| `pssFallbackProcesses` | {'int': 1162} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
