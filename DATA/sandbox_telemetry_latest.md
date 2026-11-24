# sandbox_telemetry_parse — 2026-11-24 11:33:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2267967 lines=5027
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5012 |
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
| `chromeBrowserPssKb` | {'int': 5012} |
| `chromeGpuPssKb` | {'int': 5012} |
| `chromeOtherPssKb` | {'int': 5012} |
| `chromeProcesses` | {'int': 5012} |
| `chromeProfiles` | {'int': 5012} |
| `chromeRendererMaxPssKb` | {'int': 5012} |
| `chromeRendererPssKb` | {'int': 5012} |
| `chromeRenderers` | {'int': 5012} |
| `chromeTabs` | {'int': 5012} |
| `chromeTabsProbedProfiles` | {'int': 5012} |
| `chromeUtilityPssKb` | {'int': 5012} |
| `desktopPssKb` | {'int': 5012} |
| `hostPssKb` | {'int': 5012} |
| `kind` | {'str': 5012} |
| `memAvailableKb` | {'int': 5012} |
| `memTotalKb` | {'int': 5012} |
| `otherPssKb` | {'int': 5012} |
| `processes` | {'int': 5012} |
| `pssFallbackProcesses` | {'int': 5012} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
