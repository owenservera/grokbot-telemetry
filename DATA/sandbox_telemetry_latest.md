# sandbox_telemetry_parse — 2026-11-23 19:41:26 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1964025 lines=4355
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4340 |
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
| `chromeBrowserPssKb` | {'int': 4340} |
| `chromeGpuPssKb` | {'int': 4340} |
| `chromeOtherPssKb` | {'int': 4340} |
| `chromeProcesses` | {'int': 4340} |
| `chromeProfiles` | {'int': 4340} |
| `chromeRendererMaxPssKb` | {'int': 4340} |
| `chromeRendererPssKb` | {'int': 4340} |
| `chromeRenderers` | {'int': 4340} |
| `chromeTabs` | {'int': 4340} |
| `chromeTabsProbedProfiles` | {'int': 4340} |
| `chromeUtilityPssKb` | {'int': 4340} |
| `desktopPssKb` | {'int': 4340} |
| `hostPssKb` | {'int': 4340} |
| `kind` | {'str': 4340} |
| `memAvailableKb` | {'int': 4340} |
| `memTotalKb` | {'int': 4340} |
| `otherPssKb` | {'int': 4340} |
| `processes` | {'int': 4340} |
| `pssFallbackProcesses` | {'int': 4340} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
