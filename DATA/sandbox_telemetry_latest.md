# sandbox_telemetry_parse — 2026-11-25 04:37:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2596887 lines=5754
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5739 |
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
| `chromeBrowserPssKb` | {'int': 5739} |
| `chromeGpuPssKb` | {'int': 5739} |
| `chromeOtherPssKb` | {'int': 5739} |
| `chromeProcesses` | {'int': 5739} |
| `chromeProfiles` | {'int': 5739} |
| `chromeRendererMaxPssKb` | {'int': 5739} |
| `chromeRendererPssKb` | {'int': 5739} |
| `chromeRenderers` | {'int': 5739} |
| `chromeTabs` | {'int': 5739} |
| `chromeTabsProbedProfiles` | {'int': 5739} |
| `chromeUtilityPssKb` | {'int': 5739} |
| `desktopPssKb` | {'int': 5739} |
| `hostPssKb` | {'int': 5739} |
| `kind` | {'str': 5739} |
| `memAvailableKb` | {'int': 5739} |
| `memTotalKb` | {'int': 5739} |
| `otherPssKb` | {'int': 5739} |
| `processes` | {'int': 5739} |
| `pssFallbackProcesses` | {'int': 5739} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
