# sandbox_telemetry_parse — 2026-11-10 20:07:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1298339 lines=2877
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2868 |
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
| `chromeBrowserPssKb` | {'int': 2868} |
| `chromeGpuPssKb` | {'int': 2868} |
| `chromeOtherPssKb` | {'int': 2868} |
| `chromeProcesses` | {'int': 2868} |
| `chromeProfiles` | {'int': 2868} |
| `chromeRendererMaxPssKb` | {'int': 2868} |
| `chromeRendererPssKb` | {'int': 2868} |
| `chromeRenderers` | {'int': 2868} |
| `chromeTabs` | {'int': 2868} |
| `chromeTabsProbedProfiles` | {'int': 2868} |
| `chromeUtilityPssKb` | {'int': 2868} |
| `desktopPssKb` | {'int': 2868} |
| `hostPssKb` | {'int': 2868} |
| `kind` | {'str': 2868} |
| `memAvailableKb` | {'int': 2868} |
| `memTotalKb` | {'int': 2868} |
| `otherPssKb` | {'int': 2868} |
| `processes` | {'int': 2868} |
| `pssFallbackProcesses` | {'int': 2868} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
