# sandbox_telemetry_parse — 2026-11-25 21:58:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2940575 lines=6514
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6499 |
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
| `chromeBrowserPssKb` | {'int': 6499} |
| `chromeGpuPssKb` | {'int': 6499} |
| `chromeOtherPssKb` | {'int': 6499} |
| `chromeProcesses` | {'int': 6499} |
| `chromeProfiles` | {'int': 6499} |
| `chromeRendererMaxPssKb` | {'int': 6499} |
| `chromeRendererPssKb` | {'int': 6499} |
| `chromeRenderers` | {'int': 6499} |
| `chromeTabs` | {'int': 6499} |
| `chromeTabsProbedProfiles` | {'int': 6499} |
| `chromeUtilityPssKb` | {'int': 6499} |
| `desktopPssKb` | {'int': 6499} |
| `hostPssKb` | {'int': 6499} |
| `kind` | {'str': 6499} |
| `memAvailableKb` | {'int': 6499} |
| `memTotalKb` | {'int': 6499} |
| `otherPssKb` | {'int': 6499} |
| `processes` | {'int': 6499} |
| `pssFallbackProcesses` | {'int': 6499} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
