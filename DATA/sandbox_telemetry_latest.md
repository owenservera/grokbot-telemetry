# sandbox_telemetry_parse — 2026-11-28 01:43:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=681531 lines=1513
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1505 |
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
| `chromeBrowserPssKb` | {'int': 1505} |
| `chromeGpuPssKb` | {'int': 1505} |
| `chromeOtherPssKb` | {'int': 1505} |
| `chromeProcesses` | {'int': 1505} |
| `chromeProfiles` | {'int': 1505} |
| `chromeRendererMaxPssKb` | {'int': 1505} |
| `chromeRendererPssKb` | {'int': 1505} |
| `chromeRenderers` | {'int': 1505} |
| `chromeTabs` | {'int': 1505} |
| `chromeTabsProbedProfiles` | {'int': 1505} |
| `chromeUtilityPssKb` | {'int': 1505} |
| `desktopPssKb` | {'int': 1505} |
| `hostPssKb` | {'int': 1505} |
| `kind` | {'str': 1505} |
| `memAvailableKb` | {'int': 1505} |
| `memTotalKb` | {'int': 1505} |
| `otherPssKb` | {'int': 1505} |
| `processes` | {'int': 1505} |
| `pssFallbackProcesses` | {'int': 1505} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
