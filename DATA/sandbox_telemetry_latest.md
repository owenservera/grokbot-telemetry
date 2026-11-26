# sandbox_telemetry_parse — 2026-11-26 04:42:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3078074 lines=6818
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6803 |
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
| `chromeBrowserPssKb` | {'int': 6803} |
| `chromeGpuPssKb` | {'int': 6803} |
| `chromeOtherPssKb` | {'int': 6803} |
| `chromeProcesses` | {'int': 6803} |
| `chromeProfiles` | {'int': 6803} |
| `chromeRendererMaxPssKb` | {'int': 6803} |
| `chromeRendererPssKb` | {'int': 6803} |
| `chromeRenderers` | {'int': 6803} |
| `chromeTabs` | {'int': 6803} |
| `chromeTabsProbedProfiles` | {'int': 6803} |
| `chromeUtilityPssKb` | {'int': 6803} |
| `desktopPssKb` | {'int': 6803} |
| `hostPssKb` | {'int': 6803} |
| `kind` | {'str': 6803} |
| `memAvailableKb` | {'int': 6803} |
| `memTotalKb` | {'int': 6803} |
| `otherPssKb` | {'int': 6803} |
| `processes` | {'int': 6803} |
| `pssFallbackProcesses` | {'int': 6803} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
