# sandbox_telemetry_parse — 2026-11-24 21:27:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2457615 lines=5446
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5431 |
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
| `chromeBrowserPssKb` | {'int': 5431} |
| `chromeGpuPssKb` | {'int': 5431} |
| `chromeOtherPssKb` | {'int': 5431} |
| `chromeProcesses` | {'int': 5431} |
| `chromeProfiles` | {'int': 5431} |
| `chromeRendererMaxPssKb` | {'int': 5431} |
| `chromeRendererPssKb` | {'int': 5431} |
| `chromeRenderers` | {'int': 5431} |
| `chromeTabs` | {'int': 5431} |
| `chromeTabsProbedProfiles` | {'int': 5431} |
| `chromeUtilityPssKb` | {'int': 5431} |
| `desktopPssKb` | {'int': 5431} |
| `hostPssKb` | {'int': 5431} |
| `kind` | {'str': 5431} |
| `memAvailableKb` | {'int': 5431} |
| `memTotalKb` | {'int': 5431} |
| `otherPssKb` | {'int': 5431} |
| `processes` | {'int': 5431} |
| `pssFallbackProcesses` | {'int': 5431} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
