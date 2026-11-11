# sandbox_telemetry_parse — 2026-11-11 21:14:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1819106 lines=4028
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4019 |
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
| `chromeBrowserPssKb` | {'int': 4019} |
| `chromeGpuPssKb` | {'int': 4019} |
| `chromeOtherPssKb` | {'int': 4019} |
| `chromeProcesses` | {'int': 4019} |
| `chromeProfiles` | {'int': 4019} |
| `chromeRendererMaxPssKb` | {'int': 4019} |
| `chromeRendererPssKb` | {'int': 4019} |
| `chromeRenderers` | {'int': 4019} |
| `chromeTabs` | {'int': 4019} |
| `chromeTabsProbedProfiles` | {'int': 4019} |
| `chromeUtilityPssKb` | {'int': 4019} |
| `desktopPssKb` | {'int': 4019} |
| `hostPssKb` | {'int': 4019} |
| `kind` | {'str': 4019} |
| `memAvailableKb` | {'int': 4019} |
| `memTotalKb` | {'int': 4019} |
| `otherPssKb` | {'int': 4019} |
| `processes` | {'int': 4019} |
| `pssFallbackProcesses` | {'int': 4019} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
