# sandbox_telemetry_parse — 2026-11-27 03:16:21 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=210514 lines=472
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 464 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

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
| `chromeBrowserPssKb` | {'int': 464} |
| `chromeGpuPssKb` | {'int': 464} |
| `chromeOtherPssKb` | {'int': 464} |
| `chromeProcesses` | {'int': 464} |
| `chromeProfiles` | {'int': 464} |
| `chromeRendererMaxPssKb` | {'int': 464} |
| `chromeRendererPssKb` | {'int': 464} |
| `chromeRenderers` | {'int': 464} |
| `chromeTabs` | {'int': 464} |
| `chromeTabsProbedProfiles` | {'int': 464} |
| `chromeUtilityPssKb` | {'int': 464} |
| `desktopPssKb` | {'int': 464} |
| `hostPssKb` | {'int': 464} |
| `kind` | {'str': 464} |
| `memAvailableKb` | {'int': 464} |
| `memTotalKb` | {'int': 464} |
| `otherPssKb` | {'int': 464} |
| `processes` | {'int': 464} |
| `pssFallbackProcesses` | {'int': 464} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
