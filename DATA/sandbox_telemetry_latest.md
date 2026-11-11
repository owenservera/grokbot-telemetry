# sandbox_telemetry_parse — 2026-11-11 09:44:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1568378 lines=3474
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3465 |
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
| `chromeBrowserPssKb` | {'int': 3465} |
| `chromeGpuPssKb` | {'int': 3465} |
| `chromeOtherPssKb` | {'int': 3465} |
| `chromeProcesses` | {'int': 3465} |
| `chromeProfiles` | {'int': 3465} |
| `chromeRendererMaxPssKb` | {'int': 3465} |
| `chromeRendererPssKb` | {'int': 3465} |
| `chromeRenderers` | {'int': 3465} |
| `chromeTabs` | {'int': 3465} |
| `chromeTabsProbedProfiles` | {'int': 3465} |
| `chromeUtilityPssKb` | {'int': 3465} |
| `desktopPssKb` | {'int': 3465} |
| `hostPssKb` | {'int': 3465} |
| `kind` | {'str': 3465} |
| `memAvailableKb` | {'int': 3465} |
| `memTotalKb` | {'int': 3465} |
| `otherPssKb` | {'int': 3465} |
| `processes` | {'int': 3465} |
| `pssFallbackProcesses` | {'int': 3465} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
