# sandbox_telemetry_parse — 2026-11-25 15:20:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2807623 lines=6220
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6205 |
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
| `chromeBrowserPssKb` | {'int': 6205} |
| `chromeGpuPssKb` | {'int': 6205} |
| `chromeOtherPssKb` | {'int': 6205} |
| `chromeProcesses` | {'int': 6205} |
| `chromeProfiles` | {'int': 6205} |
| `chromeRendererMaxPssKb` | {'int': 6205} |
| `chromeRendererPssKb` | {'int': 6205} |
| `chromeRenderers` | {'int': 6205} |
| `chromeTabs` | {'int': 6205} |
| `chromeTabsProbedProfiles` | {'int': 6205} |
| `chromeUtilityPssKb` | {'int': 6205} |
| `desktopPssKb` | {'int': 6205} |
| `hostPssKb` | {'int': 6205} |
| `kind` | {'str': 6205} |
| `memAvailableKb` | {'int': 6205} |
| `memTotalKb` | {'int': 6205} |
| `otherPssKb` | {'int': 6205} |
| `processes` | {'int': 6205} |
| `pssFallbackProcesses` | {'int': 6205} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
