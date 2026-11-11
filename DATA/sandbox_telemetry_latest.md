# sandbox_telemetry_parse — 2026-11-11 09:32:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1563854 lines=3464
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3455 |
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
| `chromeBrowserPssKb` | {'int': 3455} |
| `chromeGpuPssKb` | {'int': 3455} |
| `chromeOtherPssKb` | {'int': 3455} |
| `chromeProcesses` | {'int': 3455} |
| `chromeProfiles` | {'int': 3455} |
| `chromeRendererMaxPssKb` | {'int': 3455} |
| `chromeRendererPssKb` | {'int': 3455} |
| `chromeRenderers` | {'int': 3455} |
| `chromeTabs` | {'int': 3455} |
| `chromeTabsProbedProfiles` | {'int': 3455} |
| `chromeUtilityPssKb` | {'int': 3455} |
| `desktopPssKb` | {'int': 3455} |
| `hostPssKb` | {'int': 3455} |
| `kind` | {'str': 3455} |
| `memAvailableKb` | {'int': 3455} |
| `memTotalKb` | {'int': 3455} |
| `otherPssKb` | {'int': 3455} |
| `processes` | {'int': 3455} |
| `pssFallbackProcesses` | {'int': 3455} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
