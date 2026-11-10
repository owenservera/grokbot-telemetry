# sandbox_telemetry_parse — 2026-11-10 11:25:23 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1114070 lines=2470
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2461 |
| `egress_tunnel` | 5 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 2461} |
| `chromeGpuPssKb` | {'int': 2461} |
| `chromeOtherPssKb` | {'int': 2461} |
| `chromeProcesses` | {'int': 2461} |
| `chromeProfiles` | {'int': 2461} |
| `chromeRendererMaxPssKb` | {'int': 2461} |
| `chromeRendererPssKb` | {'int': 2461} |
| `chromeRenderers` | {'int': 2461} |
| `chromeTabs` | {'int': 2461} |
| `chromeTabsProbedProfiles` | {'int': 2461} |
| `chromeUtilityPssKb` | {'int': 2461} |
| `desktopPssKb` | {'int': 2461} |
| `hostPssKb` | {'int': 2461} |
| `kind` | {'str': 2461} |
| `memAvailableKb` | {'int': 2461} |
| `memTotalKb` | {'int': 2461} |
| `otherPssKb` | {'int': 2461} |
| `processes` | {'int': 2461} |
| `pssFallbackProcesses` | {'int': 2461} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
