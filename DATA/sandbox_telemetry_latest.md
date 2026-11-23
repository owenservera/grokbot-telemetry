# sandbox_telemetry_parse — 2026-11-24 00:36:55 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2058607 lines=4564
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4549 |
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
| `chromeBrowserPssKb` | {'int': 4549} |
| `chromeGpuPssKb` | {'int': 4549} |
| `chromeOtherPssKb` | {'int': 4549} |
| `chromeProcesses` | {'int': 4549} |
| `chromeProfiles` | {'int': 4549} |
| `chromeRendererMaxPssKb` | {'int': 4549} |
| `chromeRendererPssKb` | {'int': 4549} |
| `chromeRenderers` | {'int': 4549} |
| `chromeTabs` | {'int': 4549} |
| `chromeTabsProbedProfiles` | {'int': 4549} |
| `chromeUtilityPssKb` | {'int': 4549} |
| `desktopPssKb` | {'int': 4549} |
| `hostPssKb` | {'int': 4549} |
| `kind` | {'str': 4549} |
| `memAvailableKb` | {'int': 4549} |
| `memTotalKb` | {'int': 4549} |
| `otherPssKb` | {'int': 4549} |
| `processes` | {'int': 4549} |
| `pssFallbackProcesses` | {'int': 4549} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
