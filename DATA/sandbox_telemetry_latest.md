# sandbox_telemetry_parse — 2026-11-26 07:38:18 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3143684 lines=6963
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6948 |
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
| `chromeBrowserPssKb` | {'int': 6948} |
| `chromeGpuPssKb` | {'int': 6948} |
| `chromeOtherPssKb` | {'int': 6948} |
| `chromeProcesses` | {'int': 6948} |
| `chromeProfiles` | {'int': 6948} |
| `chromeRendererMaxPssKb` | {'int': 6948} |
| `chromeRendererPssKb` | {'int': 6948} |
| `chromeRenderers` | {'int': 6948} |
| `chromeTabs` | {'int': 6948} |
| `chromeTabsProbedProfiles` | {'int': 6948} |
| `chromeUtilityPssKb` | {'int': 6948} |
| `desktopPssKb` | {'int': 6948} |
| `hostPssKb` | {'int': 6948} |
| `kind` | {'str': 6948} |
| `memAvailableKb` | {'int': 6948} |
| `memTotalKb` | {'int': 6948} |
| `otherPssKb` | {'int': 6948} |
| `processes` | {'int': 6948} |
| `pssFallbackProcesses` | {'int': 6948} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
