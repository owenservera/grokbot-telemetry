# sandbox_telemetry_parse — 2026-11-10 06:34:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1022205 lines=2267
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2258 |
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
| `chromeBrowserPssKb` | {'int': 2258} |
| `chromeGpuPssKb` | {'int': 2258} |
| `chromeOtherPssKb` | {'int': 2258} |
| `chromeProcesses` | {'int': 2258} |
| `chromeProfiles` | {'int': 2258} |
| `chromeRendererMaxPssKb` | {'int': 2258} |
| `chromeRendererPssKb` | {'int': 2258} |
| `chromeRenderers` | {'int': 2258} |
| `chromeTabs` | {'int': 2258} |
| `chromeTabsProbedProfiles` | {'int': 2258} |
| `chromeUtilityPssKb` | {'int': 2258} |
| `desktopPssKb` | {'int': 2258} |
| `hostPssKb` | {'int': 2258} |
| `kind` | {'str': 2258} |
| `memAvailableKb` | {'int': 2258} |
| `memTotalKb` | {'int': 2258} |
| `otherPssKb` | {'int': 2258} |
| `processes` | {'int': 2258} |
| `pssFallbackProcesses` | {'int': 2258} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
