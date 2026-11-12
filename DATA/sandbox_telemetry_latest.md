# sandbox_telemetry_parse — 2026-11-12 05:47:34 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1993816 lines=4414
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4405 |
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
| `chromeBrowserPssKb` | {'int': 4405} |
| `chromeGpuPssKb` | {'int': 4405} |
| `chromeOtherPssKb` | {'int': 4405} |
| `chromeProcesses` | {'int': 4405} |
| `chromeProfiles` | {'int': 4405} |
| `chromeRendererMaxPssKb` | {'int': 4405} |
| `chromeRendererPssKb` | {'int': 4405} |
| `chromeRenderers` | {'int': 4405} |
| `chromeTabs` | {'int': 4405} |
| `chromeTabsProbedProfiles` | {'int': 4405} |
| `chromeUtilityPssKb` | {'int': 4405} |
| `desktopPssKb` | {'int': 4405} |
| `hostPssKb` | {'int': 4405} |
| `kind` | {'str': 4405} |
| `memAvailableKb` | {'int': 4405} |
| `memTotalKb` | {'int': 4405} |
| `otherPssKb` | {'int': 4405} |
| `processes` | {'int': 4405} |
| `pssFallbackProcesses` | {'int': 4405} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
