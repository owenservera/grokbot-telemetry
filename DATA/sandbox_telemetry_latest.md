# sandbox_telemetry_parse — 2026-11-25 23:13:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2966341 lines=6571
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6556 |
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
| `chromeBrowserPssKb` | {'int': 6556} |
| `chromeGpuPssKb` | {'int': 6556} |
| `chromeOtherPssKb` | {'int': 6556} |
| `chromeProcesses` | {'int': 6556} |
| `chromeProfiles` | {'int': 6556} |
| `chromeRendererMaxPssKb` | {'int': 6556} |
| `chromeRendererPssKb` | {'int': 6556} |
| `chromeRenderers` | {'int': 6556} |
| `chromeTabs` | {'int': 6556} |
| `chromeTabsProbedProfiles` | {'int': 6556} |
| `chromeUtilityPssKb` | {'int': 6556} |
| `desktopPssKb` | {'int': 6556} |
| `hostPssKb` | {'int': 6556} |
| `kind` | {'str': 6556} |
| `memAvailableKb` | {'int': 6556} |
| `memTotalKb` | {'int': 6556} |
| `otherPssKb` | {'int': 6556} |
| `processes` | {'int': 6556} |
| `pssFallbackProcesses` | {'int': 6556} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
