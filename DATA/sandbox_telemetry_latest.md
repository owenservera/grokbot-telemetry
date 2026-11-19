# sandbox_telemetry_parse — 2026-11-19 12:23:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1272322 lines=2821
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2812 |
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
| `chromeBrowserPssKb` | {'int': 2812} |
| `chromeGpuPssKb` | {'int': 2812} |
| `chromeOtherPssKb` | {'int': 2812} |
| `chromeProcesses` | {'int': 2812} |
| `chromeProfiles` | {'int': 2812} |
| `chromeRendererMaxPssKb` | {'int': 2812} |
| `chromeRendererPssKb` | {'int': 2812} |
| `chromeRenderers` | {'int': 2812} |
| `chromeTabs` | {'int': 2812} |
| `chromeTabsProbedProfiles` | {'int': 2812} |
| `chromeUtilityPssKb` | {'int': 2812} |
| `desktopPssKb` | {'int': 2812} |
| `hostPssKb` | {'int': 2812} |
| `kind` | {'str': 2812} |
| `memAvailableKb` | {'int': 2812} |
| `memTotalKb` | {'int': 2812} |
| `otherPssKb` | {'int': 2812} |
| `processes` | {'int': 2812} |
| `pssFallbackProcesses` | {'int': 2812} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
