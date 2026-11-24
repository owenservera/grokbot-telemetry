# sandbox_telemetry_parse — 2026-11-24 22:00:09 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2468473 lines=5470
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5455 |
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
| `chromeBrowserPssKb` | {'int': 5455} |
| `chromeGpuPssKb` | {'int': 5455} |
| `chromeOtherPssKb` | {'int': 5455} |
| `chromeProcesses` | {'int': 5455} |
| `chromeProfiles` | {'int': 5455} |
| `chromeRendererMaxPssKb` | {'int': 5455} |
| `chromeRendererPssKb` | {'int': 5455} |
| `chromeRenderers` | {'int': 5455} |
| `chromeTabs` | {'int': 5455} |
| `chromeTabsProbedProfiles` | {'int': 5455} |
| `chromeUtilityPssKb` | {'int': 5455} |
| `desktopPssKb` | {'int': 5455} |
| `hostPssKb` | {'int': 5455} |
| `kind` | {'str': 5455} |
| `memAvailableKb` | {'int': 5455} |
| `memTotalKb` | {'int': 5455} |
| `otherPssKb` | {'int': 5455} |
| `processes` | {'int': 5455} |
| `pssFallbackProcesses` | {'int': 5455} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
