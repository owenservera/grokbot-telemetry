# sandbox_telemetry_parse — 2026-11-24 12:26:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2283794 lines=5062
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5047 |
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
| `chromeBrowserPssKb` | {'int': 5047} |
| `chromeGpuPssKb` | {'int': 5047} |
| `chromeOtherPssKb` | {'int': 5047} |
| `chromeProcesses` | {'int': 5047} |
| `chromeProfiles` | {'int': 5047} |
| `chromeRendererMaxPssKb` | {'int': 5047} |
| `chromeRendererPssKb` | {'int': 5047} |
| `chromeRenderers` | {'int': 5047} |
| `chromeTabs` | {'int': 5047} |
| `chromeTabsProbedProfiles` | {'int': 5047} |
| `chromeUtilityPssKb` | {'int': 5047} |
| `desktopPssKb` | {'int': 5047} |
| `hostPssKb` | {'int': 5047} |
| `kind` | {'str': 5047} |
| `memAvailableKb` | {'int': 5047} |
| `memTotalKb` | {'int': 5047} |
| `otherPssKb` | {'int': 5047} |
| `processes` | {'int': 5047} |
| `pssFallbackProcesses` | {'int': 5047} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
