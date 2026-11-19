# sandbox_telemetry_parse — 2026-11-19 18:59:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1402388 lines=3110
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3099 |
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
| `chromeBrowserPssKb` | {'int': 3099} |
| `chromeGpuPssKb` | {'int': 3099} |
| `chromeOtherPssKb` | {'int': 3099} |
| `chromeProcesses` | {'int': 3099} |
| `chromeProfiles` | {'int': 3099} |
| `chromeRendererMaxPssKb` | {'int': 3099} |
| `chromeRendererPssKb` | {'int': 3099} |
| `chromeRenderers` | {'int': 3099} |
| `chromeTabs` | {'int': 3099} |
| `chromeTabsProbedProfiles` | {'int': 3099} |
| `chromeUtilityPssKb` | {'int': 3099} |
| `desktopPssKb` | {'int': 3099} |
| `hostPssKb` | {'int': 3099} |
| `kind` | {'str': 3099} |
| `memAvailableKb` | {'int': 3099} |
| `memTotalKb` | {'int': 3099} |
| `otherPssKb` | {'int': 3099} |
| `processes` | {'int': 3099} |
| `pssFallbackProcesses` | {'int': 3099} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
