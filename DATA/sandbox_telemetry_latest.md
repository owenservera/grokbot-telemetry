# sandbox_telemetry_parse — 2026-11-25 03:33:41 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2573369 lines=5702
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5687 |
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
| `chromeBrowserPssKb` | {'int': 5687} |
| `chromeGpuPssKb` | {'int': 5687} |
| `chromeOtherPssKb` | {'int': 5687} |
| `chromeProcesses` | {'int': 5687} |
| `chromeProfiles` | {'int': 5687} |
| `chromeRendererMaxPssKb` | {'int': 5687} |
| `chromeRendererPssKb` | {'int': 5687} |
| `chromeRenderers` | {'int': 5687} |
| `chromeTabs` | {'int': 5687} |
| `chromeTabsProbedProfiles` | {'int': 5687} |
| `chromeUtilityPssKb` | {'int': 5687} |
| `desktopPssKb` | {'int': 5687} |
| `hostPssKb` | {'int': 5687} |
| `kind` | {'str': 5687} |
| `memAvailableKb` | {'int': 5687} |
| `memTotalKb` | {'int': 5687} |
| `otherPssKb` | {'int': 5687} |
| `processes` | {'int': 5687} |
| `pssFallbackProcesses` | {'int': 5687} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
