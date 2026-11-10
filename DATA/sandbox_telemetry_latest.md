# sandbox_telemetry_parse — 2026-11-10 11:33:05 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1115881 lines=2474
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2465 |
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
| `chromeBrowserPssKb` | {'int': 2465} |
| `chromeGpuPssKb` | {'int': 2465} |
| `chromeOtherPssKb` | {'int': 2465} |
| `chromeProcesses` | {'int': 2465} |
| `chromeProfiles` | {'int': 2465} |
| `chromeRendererMaxPssKb` | {'int': 2465} |
| `chromeRendererPssKb` | {'int': 2465} |
| `chromeRenderers` | {'int': 2465} |
| `chromeTabs` | {'int': 2465} |
| `chromeTabsProbedProfiles` | {'int': 2465} |
| `chromeUtilityPssKb` | {'int': 2465} |
| `desktopPssKb` | {'int': 2465} |
| `hostPssKb` | {'int': 2465} |
| `kind` | {'str': 2465} |
| `memAvailableKb` | {'int': 2465} |
| `memTotalKb` | {'int': 2465} |
| `otherPssKb` | {'int': 2465} |
| `processes` | {'int': 2465} |
| `pssFallbackProcesses` | {'int': 2465} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
