# sandbox_telemetry_parse — 2026-11-23 23:41:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2040074 lines=4523
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4508 |
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
| `chromeBrowserPssKb` | {'int': 4508} |
| `chromeGpuPssKb` | {'int': 4508} |
| `chromeOtherPssKb` | {'int': 4508} |
| `chromeProcesses` | {'int': 4508} |
| `chromeProfiles` | {'int': 4508} |
| `chromeRendererMaxPssKb` | {'int': 4508} |
| `chromeRendererPssKb` | {'int': 4508} |
| `chromeRenderers` | {'int': 4508} |
| `chromeTabs` | {'int': 4508} |
| `chromeTabsProbedProfiles` | {'int': 4508} |
| `chromeUtilityPssKb` | {'int': 4508} |
| `desktopPssKb` | {'int': 4508} |
| `hostPssKb` | {'int': 4508} |
| `kind` | {'str': 4508} |
| `memAvailableKb` | {'int': 4508} |
| `memTotalKb` | {'int': 4508} |
| `otherPssKb` | {'int': 4508} |
| `processes` | {'int': 4508} |
| `pssFallbackProcesses` | {'int': 4508} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
