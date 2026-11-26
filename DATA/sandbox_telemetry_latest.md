# sandbox_telemetry_parse — 2026-11-26 12:31:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3251370 lines=7201
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7186 |
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
| `chromeBrowserPssKb` | {'int': 7186} |
| `chromeGpuPssKb` | {'int': 7186} |
| `chromeOtherPssKb` | {'int': 7186} |
| `chromeProcesses` | {'int': 7186} |
| `chromeProfiles` | {'int': 7186} |
| `chromeRendererMaxPssKb` | {'int': 7186} |
| `chromeRendererPssKb` | {'int': 7186} |
| `chromeRenderers` | {'int': 7186} |
| `chromeTabs` | {'int': 7186} |
| `chromeTabsProbedProfiles` | {'int': 7186} |
| `chromeUtilityPssKb` | {'int': 7186} |
| `desktopPssKb` | {'int': 7186} |
| `hostPssKb` | {'int': 7186} |
| `kind` | {'str': 7186} |
| `memAvailableKb` | {'int': 7186} |
| `memTotalKb` | {'int': 7186} |
| `otherPssKb` | {'int': 7186} |
| `processes` | {'int': 7186} |
| `pssFallbackProcesses` | {'int': 7186} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
