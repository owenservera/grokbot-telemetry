# sandbox_telemetry_parse — 2026-11-25 06:30:16 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2631248 lines=5830
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5815 |
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
| `chromeBrowserPssKb` | {'int': 5815} |
| `chromeGpuPssKb` | {'int': 5815} |
| `chromeOtherPssKb` | {'int': 5815} |
| `chromeProcesses` | {'int': 5815} |
| `chromeProfiles` | {'int': 5815} |
| `chromeRendererMaxPssKb` | {'int': 5815} |
| `chromeRendererPssKb` | {'int': 5815} |
| `chromeRenderers` | {'int': 5815} |
| `chromeTabs` | {'int': 5815} |
| `chromeTabsProbedProfiles` | {'int': 5815} |
| `chromeUtilityPssKb` | {'int': 5815} |
| `desktopPssKb` | {'int': 5815} |
| `hostPssKb` | {'int': 5815} |
| `kind` | {'str': 5815} |
| `memAvailableKb` | {'int': 5815} |
| `memTotalKb` | {'int': 5815} |
| `otherPssKb` | {'int': 5815} |
| `processes` | {'int': 5815} |
| `pssFallbackProcesses` | {'int': 5815} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
