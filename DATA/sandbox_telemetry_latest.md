# sandbox_telemetry_parse — 2026-11-12 09:42:11 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2068012 lines=4578
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4569 |
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
| `chromeBrowserPssKb` | {'int': 4569} |
| `chromeGpuPssKb` | {'int': 4569} |
| `chromeOtherPssKb` | {'int': 4569} |
| `chromeProcesses` | {'int': 4569} |
| `chromeProfiles` | {'int': 4569} |
| `chromeRendererMaxPssKb` | {'int': 4569} |
| `chromeRendererPssKb` | {'int': 4569} |
| `chromeRenderers` | {'int': 4569} |
| `chromeTabs` | {'int': 4569} |
| `chromeTabsProbedProfiles` | {'int': 4569} |
| `chromeUtilityPssKb` | {'int': 4569} |
| `desktopPssKb` | {'int': 4569} |
| `hostPssKb` | {'int': 4569} |
| `kind` | {'str': 4569} |
| `memAvailableKb` | {'int': 4569} |
| `memTotalKb` | {'int': 4569} |
| `otherPssKb` | {'int': 4569} |
| `processes` | {'int': 4569} |
| `pssFallbackProcesses` | {'int': 4569} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
