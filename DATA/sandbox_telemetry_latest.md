# sandbox_telemetry_parse — 2026-11-16 18:03:33 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=67487 lines=155
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 148 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `chromeBrowserPssKb` | {'int': 148} |
| `chromeGpuPssKb` | {'int': 148} |
| `chromeOtherPssKb` | {'int': 148} |
| `chromeProcesses` | {'int': 148} |
| `chromeProfiles` | {'int': 148} |
| `chromeRendererMaxPssKb` | {'int': 148} |
| `chromeRendererPssKb` | {'int': 148} |
| `chromeRenderers` | {'int': 148} |
| `chromeTabs` | {'int': 148} |
| `chromeTabsProbedProfiles` | {'int': 148} |
| `chromeUtilityPssKb` | {'int': 148} |
| `desktopPssKb` | {'int': 148} |
| `hostPssKb` | {'int': 148} |
| `kind` | {'str': 148} |
| `memAvailableKb` | {'int': 148} |
| `memTotalKb` | {'int': 148} |
| `otherPssKb` | {'int': 148} |
| `processes` | {'int': 148} |
| `pssFallbackProcesses` | {'int': 148} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
