# sandbox_telemetry_parse — 2026-11-11 08:23:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1541239 lines=3414
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3405 |
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
| `chromeBrowserPssKb` | {'int': 3405} |
| `chromeGpuPssKb` | {'int': 3405} |
| `chromeOtherPssKb` | {'int': 3405} |
| `chromeProcesses` | {'int': 3405} |
| `chromeProfiles` | {'int': 3405} |
| `chromeRendererMaxPssKb` | {'int': 3405} |
| `chromeRendererPssKb` | {'int': 3405} |
| `chromeRenderers` | {'int': 3405} |
| `chromeTabs` | {'int': 3405} |
| `chromeTabsProbedProfiles` | {'int': 3405} |
| `chromeUtilityPssKb` | {'int': 3405} |
| `desktopPssKb` | {'int': 3405} |
| `hostPssKb` | {'int': 3405} |
| `kind` | {'str': 3405} |
| `memAvailableKb` | {'int': 3405} |
| `memTotalKb` | {'int': 3405} |
| `otherPssKb` | {'int': 3405} |
| `processes` | {'int': 3405} |
| `pssFallbackProcesses` | {'int': 3405} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
