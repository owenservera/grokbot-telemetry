# sandbox_telemetry_parse — 2026-11-19 04:10:30 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1114052 lines=2471
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2462 |
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
| `chromeBrowserPssKb` | {'int': 2462} |
| `chromeGpuPssKb` | {'int': 2462} |
| `chromeOtherPssKb` | {'int': 2462} |
| `chromeProcesses` | {'int': 2462} |
| `chromeProfiles` | {'int': 2462} |
| `chromeRendererMaxPssKb` | {'int': 2462} |
| `chromeRendererPssKb` | {'int': 2462} |
| `chromeRenderers` | {'int': 2462} |
| `chromeTabs` | {'int': 2462} |
| `chromeTabsProbedProfiles` | {'int': 2462} |
| `chromeUtilityPssKb` | {'int': 2462} |
| `desktopPssKb` | {'int': 2462} |
| `hostPssKb` | {'int': 2462} |
| `kind` | {'str': 2462} |
| `memAvailableKb` | {'int': 2462} |
| `memTotalKb` | {'int': 2462} |
| `otherPssKb` | {'int': 2462} |
| `processes` | {'int': 2462} |
| `pssFallbackProcesses` | {'int': 2462} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
