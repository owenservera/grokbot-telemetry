# sandbox_telemetry_parse — 2026-11-26 09:53:14 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3197080 lines=7081
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7066 |
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
| `chromeBrowserPssKb` | {'int': 7066} |
| `chromeGpuPssKb` | {'int': 7066} |
| `chromeOtherPssKb` | {'int': 7066} |
| `chromeProcesses` | {'int': 7066} |
| `chromeProfiles` | {'int': 7066} |
| `chromeRendererMaxPssKb` | {'int': 7066} |
| `chromeRendererPssKb` | {'int': 7066} |
| `chromeRenderers` | {'int': 7066} |
| `chromeTabs` | {'int': 7066} |
| `chromeTabsProbedProfiles` | {'int': 7066} |
| `chromeUtilityPssKb` | {'int': 7066} |
| `desktopPssKb` | {'int': 7066} |
| `hostPssKb` | {'int': 7066} |
| `kind` | {'str': 7066} |
| `memAvailableKb` | {'int': 7066} |
| `memTotalKb` | {'int': 7066} |
| `otherPssKb` | {'int': 7066} |
| `processes` | {'int': 7066} |
| `pssFallbackProcesses` | {'int': 7066} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
