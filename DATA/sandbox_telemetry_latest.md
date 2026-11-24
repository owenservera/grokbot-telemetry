# sandbox_telemetry_parse — 2026-11-24 20:21:10 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2433636 lines=5393
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5378 |
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
| `chromeBrowserPssKb` | {'int': 5378} |
| `chromeGpuPssKb` | {'int': 5378} |
| `chromeOtherPssKb` | {'int': 5378} |
| `chromeProcesses` | {'int': 5378} |
| `chromeProfiles` | {'int': 5378} |
| `chromeRendererMaxPssKb` | {'int': 5378} |
| `chromeRendererPssKb` | {'int': 5378} |
| `chromeRenderers` | {'int': 5378} |
| `chromeTabs` | {'int': 5378} |
| `chromeTabsProbedProfiles` | {'int': 5378} |
| `chromeUtilityPssKb` | {'int': 5378} |
| `desktopPssKb` | {'int': 5378} |
| `hostPssKb` | {'int': 5378} |
| `kind` | {'str': 5378} |
| `memAvailableKb` | {'int': 5378} |
| `memTotalKb` | {'int': 5378} |
| `otherPssKb` | {'int': 5378} |
| `processes` | {'int': 5378} |
| `pssFallbackProcesses` | {'int': 5378} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
