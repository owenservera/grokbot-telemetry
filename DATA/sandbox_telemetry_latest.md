# sandbox_telemetry_parse — 2026-11-26 04:56:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3083049 lines=6829
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6814 |
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
| `chromeBrowserPssKb` | {'int': 6814} |
| `chromeGpuPssKb` | {'int': 6814} |
| `chromeOtherPssKb` | {'int': 6814} |
| `chromeProcesses` | {'int': 6814} |
| `chromeProfiles` | {'int': 6814} |
| `chromeRendererMaxPssKb` | {'int': 6814} |
| `chromeRendererPssKb` | {'int': 6814} |
| `chromeRenderers` | {'int': 6814} |
| `chromeTabs` | {'int': 6814} |
| `chromeTabsProbedProfiles` | {'int': 6814} |
| `chromeUtilityPssKb` | {'int': 6814} |
| `desktopPssKb` | {'int': 6814} |
| `hostPssKb` | {'int': 6814} |
| `kind` | {'str': 6814} |
| `memAvailableKb` | {'int': 6814} |
| `memTotalKb` | {'int': 6814} |
| `otherPssKb` | {'int': 6814} |
| `processes` | {'int': 6814} |
| `pssFallbackProcesses` | {'int': 6814} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
