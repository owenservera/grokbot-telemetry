# sandbox_telemetry_parse — 2026-11-12 23:27:26 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2372254 lines=5250
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5241 |
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
| `chromeBrowserPssKb` | {'int': 5241} |
| `chromeGpuPssKb` | {'int': 5241} |
| `chromeOtherPssKb` | {'int': 5241} |
| `chromeProcesses` | {'int': 5241} |
| `chromeProfiles` | {'int': 5241} |
| `chromeRendererMaxPssKb` | {'int': 5241} |
| `chromeRendererPssKb` | {'int': 5241} |
| `chromeRenderers` | {'int': 5241} |
| `chromeTabs` | {'int': 5241} |
| `chromeTabsProbedProfiles` | {'int': 5241} |
| `chromeUtilityPssKb` | {'int': 5241} |
| `desktopPssKb` | {'int': 5241} |
| `hostPssKb` | {'int': 5241} |
| `kind` | {'str': 5241} |
| `memAvailableKb` | {'int': 5241} |
| `memTotalKb` | {'int': 5241} |
| `otherPssKb` | {'int': 5241} |
| `processes` | {'int': 5241} |
| `pssFallbackProcesses` | {'int': 5241} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
