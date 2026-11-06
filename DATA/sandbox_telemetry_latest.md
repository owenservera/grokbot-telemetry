# sandbox_telemetry_parse — 2026-11-06 18:57:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=119698 lines=272
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 263 |
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
| `chromeBrowserPssKb` | {'int': 263} |
| `chromeGpuPssKb` | {'int': 263} |
| `chromeOtherPssKb` | {'int': 263} |
| `chromeProcesses` | {'int': 263} |
| `chromeProfiles` | {'int': 263} |
| `chromeRendererMaxPssKb` | {'int': 263} |
| `chromeRendererPssKb` | {'int': 263} |
| `chromeRenderers` | {'int': 263} |
| `chromeTabs` | {'int': 263} |
| `chromeTabsProbedProfiles` | {'int': 263} |
| `chromeUtilityPssKb` | {'int': 263} |
| `desktopPssKb` | {'int': 263} |
| `hostPssKb` | {'int': 263} |
| `kind` | {'str': 263} |
| `memAvailableKb` | {'int': 263} |
| `memTotalKb` | {'int': 263} |
| `otherPssKb` | {'int': 263} |
| `processes` | {'int': 263} |
| `pssFallbackProcesses` | {'int': 263} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
