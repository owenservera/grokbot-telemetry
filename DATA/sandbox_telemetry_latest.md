# sandbox_telemetry_parse — 2026-11-26 02:01:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3023791 lines=6698
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6683 |
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
| `chromeBrowserPssKb` | {'int': 6683} |
| `chromeGpuPssKb` | {'int': 6683} |
| `chromeOtherPssKb` | {'int': 6683} |
| `chromeProcesses` | {'int': 6683} |
| `chromeProfiles` | {'int': 6683} |
| `chromeRendererMaxPssKb` | {'int': 6683} |
| `chromeRendererPssKb` | {'int': 6683} |
| `chromeRenderers` | {'int': 6683} |
| `chromeTabs` | {'int': 6683} |
| `chromeTabsProbedProfiles` | {'int': 6683} |
| `chromeUtilityPssKb` | {'int': 6683} |
| `desktopPssKb` | {'int': 6683} |
| `hostPssKb` | {'int': 6683} |
| `kind` | {'str': 6683} |
| `memAvailableKb` | {'int': 6683} |
| `memTotalKb` | {'int': 6683} |
| `otherPssKb` | {'int': 6683} |
| `processes` | {'int': 6683} |
| `pssFallbackProcesses` | {'int': 6683} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
