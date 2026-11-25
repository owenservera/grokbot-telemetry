# sandbox_telemetry_parse — 2026-11-25 12:11:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2751559 lines=6096
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6081 |
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
| `chromeBrowserPssKb` | {'int': 6081} |
| `chromeGpuPssKb` | {'int': 6081} |
| `chromeOtherPssKb` | {'int': 6081} |
| `chromeProcesses` | {'int': 6081} |
| `chromeProfiles` | {'int': 6081} |
| `chromeRendererMaxPssKb` | {'int': 6081} |
| `chromeRendererPssKb` | {'int': 6081} |
| `chromeRenderers` | {'int': 6081} |
| `chromeTabs` | {'int': 6081} |
| `chromeTabsProbedProfiles` | {'int': 6081} |
| `chromeUtilityPssKb` | {'int': 6081} |
| `desktopPssKb` | {'int': 6081} |
| `hostPssKb` | {'int': 6081} |
| `kind` | {'str': 6081} |
| `memAvailableKb` | {'int': 6081} |
| `memTotalKb` | {'int': 6081} |
| `otherPssKb` | {'int': 6081} |
| `processes` | {'int': 6081} |
| `pssFallbackProcesses` | {'int': 6081} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
