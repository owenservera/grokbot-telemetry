# sandbox_telemetry_parse — 2026-11-11 01:22:30 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1414646 lines=3134
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3125 |
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
| `chromeBrowserPssKb` | {'int': 3125} |
| `chromeGpuPssKb` | {'int': 3125} |
| `chromeOtherPssKb` | {'int': 3125} |
| `chromeProcesses` | {'int': 3125} |
| `chromeProfiles` | {'int': 3125} |
| `chromeRendererMaxPssKb` | {'int': 3125} |
| `chromeRendererPssKb` | {'int': 3125} |
| `chromeRenderers` | {'int': 3125} |
| `chromeTabs` | {'int': 3125} |
| `chromeTabsProbedProfiles` | {'int': 3125} |
| `chromeUtilityPssKb` | {'int': 3125} |
| `desktopPssKb` | {'int': 3125} |
| `hostPssKb` | {'int': 3125} |
| `kind` | {'str': 3125} |
| `memAvailableKb` | {'int': 3125} |
| `memTotalKb` | {'int': 3125} |
| `otherPssKb` | {'int': 3125} |
| `processes` | {'int': 3125} |
| `pssFallbackProcesses` | {'int': 3125} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
