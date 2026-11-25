# sandbox_telemetry_parse — 2026-11-25 08:11:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2665161 lines=5905
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5890 |
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
| `chromeBrowserPssKb` | {'int': 5890} |
| `chromeGpuPssKb` | {'int': 5890} |
| `chromeOtherPssKb` | {'int': 5890} |
| `chromeProcesses` | {'int': 5890} |
| `chromeProfiles` | {'int': 5890} |
| `chromeRendererMaxPssKb` | {'int': 5890} |
| `chromeRendererPssKb` | {'int': 5890} |
| `chromeRenderers` | {'int': 5890} |
| `chromeTabs` | {'int': 5890} |
| `chromeTabsProbedProfiles` | {'int': 5890} |
| `chromeUtilityPssKb` | {'int': 5890} |
| `desktopPssKb` | {'int': 5890} |
| `hostPssKb` | {'int': 5890} |
| `kind` | {'str': 5890} |
| `memAvailableKb` | {'int': 5890} |
| `memTotalKb` | {'int': 5890} |
| `otherPssKb` | {'int': 5890} |
| `processes` | {'int': 5890} |
| `pssFallbackProcesses` | {'int': 5890} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
