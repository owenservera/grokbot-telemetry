# sandbox_telemetry_parse — 2026-11-25 22:49:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2956847 lines=6550
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6535 |
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
| `chromeBrowserPssKb` | {'int': 6535} |
| `chromeGpuPssKb` | {'int': 6535} |
| `chromeOtherPssKb` | {'int': 6535} |
| `chromeProcesses` | {'int': 6535} |
| `chromeProfiles` | {'int': 6535} |
| `chromeRendererMaxPssKb` | {'int': 6535} |
| `chromeRendererPssKb` | {'int': 6535} |
| `chromeRenderers` | {'int': 6535} |
| `chromeTabs` | {'int': 6535} |
| `chromeTabsProbedProfiles` | {'int': 6535} |
| `chromeUtilityPssKb` | {'int': 6535} |
| `desktopPssKb` | {'int': 6535} |
| `hostPssKb` | {'int': 6535} |
| `kind` | {'str': 6535} |
| `memAvailableKb` | {'int': 6535} |
| `memTotalKb` | {'int': 6535} |
| `otherPssKb` | {'int': 6535} |
| `processes` | {'int': 6535} |
| `pssFallbackProcesses` | {'int': 6535} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
