# sandbox_telemetry_parse — 2026-11-07 13:38:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=485134 lines=1080
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1071 |
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
| `chromeBrowserPssKb` | {'int': 1071} |
| `chromeGpuPssKb` | {'int': 1071} |
| `chromeOtherPssKb` | {'int': 1071} |
| `chromeProcesses` | {'int': 1071} |
| `chromeProfiles` | {'int': 1071} |
| `chromeRendererMaxPssKb` | {'int': 1071} |
| `chromeRendererPssKb` | {'int': 1071} |
| `chromeRenderers` | {'int': 1071} |
| `chromeTabs` | {'int': 1071} |
| `chromeTabsProbedProfiles` | {'int': 1071} |
| `chromeUtilityPssKb` | {'int': 1071} |
| `desktopPssKb` | {'int': 1071} |
| `hostPssKb` | {'int': 1071} |
| `kind` | {'str': 1071} |
| `memAvailableKb` | {'int': 1071} |
| `memTotalKb` | {'int': 1071} |
| `otherPssKb` | {'int': 1071} |
| `processes` | {'int': 1071} |
| `pssFallbackProcesses` | {'int': 1071} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
