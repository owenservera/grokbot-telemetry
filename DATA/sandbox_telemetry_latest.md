# sandbox_telemetry_parse — 2026-11-25 20:06:18 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2903489 lines=6432
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6417 |
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
| `chromeBrowserPssKb` | {'int': 6417} |
| `chromeGpuPssKb` | {'int': 6417} |
| `chromeOtherPssKb` | {'int': 6417} |
| `chromeProcesses` | {'int': 6417} |
| `chromeProfiles` | {'int': 6417} |
| `chromeRendererMaxPssKb` | {'int': 6417} |
| `chromeRendererPssKb` | {'int': 6417} |
| `chromeRenderers` | {'int': 6417} |
| `chromeTabs` | {'int': 6417} |
| `chromeTabsProbedProfiles` | {'int': 6417} |
| `chromeUtilityPssKb` | {'int': 6417} |
| `desktopPssKb` | {'int': 6417} |
| `hostPssKb` | {'int': 6417} |
| `kind` | {'str': 6417} |
| `memAvailableKb` | {'int': 6417} |
| `memTotalKb` | {'int': 6417} |
| `otherPssKb` | {'int': 6417} |
| `processes` | {'int': 6417} |
| `pssFallbackProcesses` | {'int': 6417} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
