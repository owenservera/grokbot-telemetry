# sandbox_telemetry_parse — 2026-11-28 14:33:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=928084 lines=2058
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2050 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 2050} |
| `chromeGpuPssKb` | {'int': 2050} |
| `chromeOtherPssKb` | {'int': 2050} |
| `chromeProcesses` | {'int': 2050} |
| `chromeProfiles` | {'int': 2050} |
| `chromeRendererMaxPssKb` | {'int': 2050} |
| `chromeRendererPssKb` | {'int': 2050} |
| `chromeRenderers` | {'int': 2050} |
| `chromeTabs` | {'int': 2050} |
| `chromeTabsProbedProfiles` | {'int': 2050} |
| `chromeUtilityPssKb` | {'int': 2050} |
| `desktopPssKb` | {'int': 2050} |
| `hostPssKb` | {'int': 2050} |
| `kind` | {'str': 2050} |
| `memAvailableKb` | {'int': 2050} |
| `memTotalKb` | {'int': 2050} |
| `otherPssKb` | {'int': 2050} |
| `processes` | {'int': 2050} |
| `pssFallbackProcesses` | {'int': 2050} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
