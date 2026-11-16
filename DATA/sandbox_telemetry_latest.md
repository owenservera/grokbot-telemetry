# sandbox_telemetry_parse — 2026-11-16 18:22:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=72007 lines=165
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 158 |
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
| `chromeBrowserPssKb` | {'int': 158} |
| `chromeGpuPssKb` | {'int': 158} |
| `chromeOtherPssKb` | {'int': 158} |
| `chromeProcesses` | {'int': 158} |
| `chromeProfiles` | {'int': 158} |
| `chromeRendererMaxPssKb` | {'int': 158} |
| `chromeRendererPssKb` | {'int': 158} |
| `chromeRenderers` | {'int': 158} |
| `chromeTabs` | {'int': 158} |
| `chromeTabsProbedProfiles` | {'int': 158} |
| `chromeUtilityPssKb` | {'int': 158} |
| `desktopPssKb` | {'int': 158} |
| `hostPssKb` | {'int': 158} |
| `kind` | {'str': 158} |
| `memAvailableKb` | {'int': 158} |
| `memTotalKb` | {'int': 158} |
| `otherPssKb` | {'int': 158} |
| `processes` | {'int': 158} |
| `pssFallbackProcesses` | {'int': 158} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
