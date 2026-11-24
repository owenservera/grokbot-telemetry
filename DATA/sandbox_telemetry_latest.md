# sandbox_telemetry_parse — 2026-11-24 12:13:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2279721 lines=5053
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5038 |
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
| `chromeBrowserPssKb` | {'int': 5038} |
| `chromeGpuPssKb` | {'int': 5038} |
| `chromeOtherPssKb` | {'int': 5038} |
| `chromeProcesses` | {'int': 5038} |
| `chromeProfiles` | {'int': 5038} |
| `chromeRendererMaxPssKb` | {'int': 5038} |
| `chromeRendererPssKb` | {'int': 5038} |
| `chromeRenderers` | {'int': 5038} |
| `chromeTabs` | {'int': 5038} |
| `chromeTabsProbedProfiles` | {'int': 5038} |
| `chromeUtilityPssKb` | {'int': 5038} |
| `desktopPssKb` | {'int': 5038} |
| `hostPssKb` | {'int': 5038} |
| `kind` | {'str': 5038} |
| `memAvailableKb` | {'int': 5038} |
| `memTotalKb` | {'int': 5038} |
| `otherPssKb` | {'int': 5038} |
| `processes` | {'int': 5038} |
| `pssFallbackProcesses` | {'int': 5038} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
