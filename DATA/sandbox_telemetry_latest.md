# sandbox_telemetry_parse — 2026-11-18 12:58:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=826210 lines=1833
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1826 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `chromeBrowserPssKb` | {'int': 1826} |
| `chromeGpuPssKb` | {'int': 1826} |
| `chromeOtherPssKb` | {'int': 1826} |
| `chromeProcesses` | {'int': 1826} |
| `chromeProfiles` | {'int': 1826} |
| `chromeRendererMaxPssKb` | {'int': 1826} |
| `chromeRendererPssKb` | {'int': 1826} |
| `chromeRenderers` | {'int': 1826} |
| `chromeTabs` | {'int': 1826} |
| `chromeTabsProbedProfiles` | {'int': 1826} |
| `chromeUtilityPssKb` | {'int': 1826} |
| `desktopPssKb` | {'int': 1826} |
| `hostPssKb` | {'int': 1826} |
| `kind` | {'str': 1826} |
| `memAvailableKb` | {'int': 1826} |
| `memTotalKb` | {'int': 1826} |
| `otherPssKb` | {'int': 1826} |
| `processes` | {'int': 1826} |
| `pssFallbackProcesses` | {'int': 1826} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
