# sandbox_telemetry_parse — 2026-11-06 21:51:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=183937 lines=414
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 405 |
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
| `chromeBrowserPssKb` | {'int': 405} |
| `chromeGpuPssKb` | {'int': 405} |
| `chromeOtherPssKb` | {'int': 405} |
| `chromeProcesses` | {'int': 405} |
| `chromeProfiles` | {'int': 405} |
| `chromeRendererMaxPssKb` | {'int': 405} |
| `chromeRendererPssKb` | {'int': 405} |
| `chromeRenderers` | {'int': 405} |
| `chromeTabs` | {'int': 405} |
| `chromeTabsProbedProfiles` | {'int': 405} |
| `chromeUtilityPssKb` | {'int': 405} |
| `desktopPssKb` | {'int': 405} |
| `hostPssKb` | {'int': 405} |
| `kind` | {'str': 405} |
| `memAvailableKb` | {'int': 405} |
| `memTotalKb` | {'int': 405} |
| `otherPssKb` | {'int': 405} |
| `processes` | {'int': 405} |
| `pssFallbackProcesses` | {'int': 405} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
