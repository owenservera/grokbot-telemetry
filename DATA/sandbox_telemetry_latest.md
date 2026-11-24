# sandbox_telemetry_parse — 2026-11-24 10:36:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2247620 lines=4982
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4967 |
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
| `chromeBrowserPssKb` | {'int': 4967} |
| `chromeGpuPssKb` | {'int': 4967} |
| `chromeOtherPssKb` | {'int': 4967} |
| `chromeProcesses` | {'int': 4967} |
| `chromeProfiles` | {'int': 4967} |
| `chromeRendererMaxPssKb` | {'int': 4967} |
| `chromeRendererPssKb` | {'int': 4967} |
| `chromeRenderers` | {'int': 4967} |
| `chromeTabs` | {'int': 4967} |
| `chromeTabsProbedProfiles` | {'int': 4967} |
| `chromeUtilityPssKb` | {'int': 4967} |
| `desktopPssKb` | {'int': 4967} |
| `hostPssKb` | {'int': 4967} |
| `kind` | {'str': 4967} |
| `memAvailableKb` | {'int': 4967} |
| `memTotalKb` | {'int': 4967} |
| `otherPssKb` | {'int': 4967} |
| `processes` | {'int': 4967} |
| `pssFallbackProcesses` | {'int': 4967} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
