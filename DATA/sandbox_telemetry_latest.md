# sandbox_telemetry_parse — 2026-11-26 11:42:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3234186 lines=7163
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7148 |
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
| `chromeBrowserPssKb` | {'int': 7148} |
| `chromeGpuPssKb` | {'int': 7148} |
| `chromeOtherPssKb` | {'int': 7148} |
| `chromeProcesses` | {'int': 7148} |
| `chromeProfiles` | {'int': 7148} |
| `chromeRendererMaxPssKb` | {'int': 7148} |
| `chromeRendererPssKb` | {'int': 7148} |
| `chromeRenderers` | {'int': 7148} |
| `chromeTabs` | {'int': 7148} |
| `chromeTabsProbedProfiles` | {'int': 7148} |
| `chromeUtilityPssKb` | {'int': 7148} |
| `desktopPssKb` | {'int': 7148} |
| `hostPssKb` | {'int': 7148} |
| `kind` | {'str': 7148} |
| `memAvailableKb` | {'int': 7148} |
| `memTotalKb` | {'int': 7148} |
| `otherPssKb` | {'int': 7148} |
| `processes` | {'int': 7148} |
| `pssFallbackProcesses` | {'int': 7148} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
