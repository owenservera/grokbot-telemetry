# sandbox_telemetry_parse — 2026-11-23 22:57:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2025140 lines=4490
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4475 |
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
| `chromeBrowserPssKb` | {'int': 4475} |
| `chromeGpuPssKb` | {'int': 4475} |
| `chromeOtherPssKb` | {'int': 4475} |
| `chromeProcesses` | {'int': 4475} |
| `chromeProfiles` | {'int': 4475} |
| `chromeRendererMaxPssKb` | {'int': 4475} |
| `chromeRendererPssKb` | {'int': 4475} |
| `chromeRenderers` | {'int': 4475} |
| `chromeTabs` | {'int': 4475} |
| `chromeTabsProbedProfiles` | {'int': 4475} |
| `chromeUtilityPssKb` | {'int': 4475} |
| `desktopPssKb` | {'int': 4475} |
| `hostPssKb` | {'int': 4475} |
| `kind` | {'str': 4475} |
| `memAvailableKb` | {'int': 4475} |
| `memTotalKb` | {'int': 4475} |
| `otherPssKb` | {'int': 4475} |
| `processes` | {'int': 4475} |
| `pssFallbackProcesses` | {'int': 4475} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
