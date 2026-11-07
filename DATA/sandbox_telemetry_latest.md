# sandbox_telemetry_parse — 2026-11-07 15:14:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=514081 lines=1144
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1135 |
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
| `chromeBrowserPssKb` | {'int': 1135} |
| `chromeGpuPssKb` | {'int': 1135} |
| `chromeOtherPssKb` | {'int': 1135} |
| `chromeProcesses` | {'int': 1135} |
| `chromeProfiles` | {'int': 1135} |
| `chromeRendererMaxPssKb` | {'int': 1135} |
| `chromeRendererPssKb` | {'int': 1135} |
| `chromeRenderers` | {'int': 1135} |
| `chromeTabs` | {'int': 1135} |
| `chromeTabsProbedProfiles` | {'int': 1135} |
| `chromeUtilityPssKb` | {'int': 1135} |
| `desktopPssKb` | {'int': 1135} |
| `hostPssKb` | {'int': 1135} |
| `kind` | {'str': 1135} |
| `memAvailableKb` | {'int': 1135} |
| `memTotalKb` | {'int': 1135} |
| `otherPssKb` | {'int': 1135} |
| `processes` | {'int': 1135} |
| `pssFallbackProcesses` | {'int': 1135} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
