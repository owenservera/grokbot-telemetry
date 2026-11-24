# sandbox_telemetry_parse — 2026-11-24 01:18:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2070365 lines=4590
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4575 |
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
| `chromeBrowserPssKb` | {'int': 4575} |
| `chromeGpuPssKb` | {'int': 4575} |
| `chromeOtherPssKb` | {'int': 4575} |
| `chromeProcesses` | {'int': 4575} |
| `chromeProfiles` | {'int': 4575} |
| `chromeRendererMaxPssKb` | {'int': 4575} |
| `chromeRendererPssKb` | {'int': 4575} |
| `chromeRenderers` | {'int': 4575} |
| `chromeTabs` | {'int': 4575} |
| `chromeTabsProbedProfiles` | {'int': 4575} |
| `chromeUtilityPssKb` | {'int': 4575} |
| `desktopPssKb` | {'int': 4575} |
| `hostPssKb` | {'int': 4575} |
| `kind` | {'str': 4575} |
| `memAvailableKb` | {'int': 4575} |
| `memTotalKb` | {'int': 4575} |
| `otherPssKb` | {'int': 4575} |
| `processes` | {'int': 4575} |
| `pssFallbackProcesses` | {'int': 4575} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
