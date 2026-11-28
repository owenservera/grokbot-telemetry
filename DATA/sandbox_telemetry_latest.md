# sandbox_telemetry_parse — 2026-11-28 16:26:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=964308 lines=2138
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2130 |
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
| `chromeBrowserPssKb` | {'int': 2130} |
| `chromeGpuPssKb` | {'int': 2130} |
| `chromeOtherPssKb` | {'int': 2130} |
| `chromeProcesses` | {'int': 2130} |
| `chromeProfiles` | {'int': 2130} |
| `chromeRendererMaxPssKb` | {'int': 2130} |
| `chromeRendererPssKb` | {'int': 2130} |
| `chromeRenderers` | {'int': 2130} |
| `chromeTabs` | {'int': 2130} |
| `chromeTabsProbedProfiles` | {'int': 2130} |
| `chromeUtilityPssKb` | {'int': 2130} |
| `desktopPssKb` | {'int': 2130} |
| `hostPssKb` | {'int': 2130} |
| `kind` | {'str': 2130} |
| `memAvailableKb` | {'int': 2130} |
| `memTotalKb` | {'int': 2130} |
| `otherPssKb` | {'int': 2130} |
| `processes` | {'int': 2130} |
| `pssFallbackProcesses` | {'int': 2130} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
