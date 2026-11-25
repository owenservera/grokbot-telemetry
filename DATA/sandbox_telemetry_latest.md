# sandbox_telemetry_parse — 2026-11-25 10:49:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2723077 lines=6033
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6018 |
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
| `chromeBrowserPssKb` | {'int': 6018} |
| `chromeGpuPssKb` | {'int': 6018} |
| `chromeOtherPssKb` | {'int': 6018} |
| `chromeProcesses` | {'int': 6018} |
| `chromeProfiles` | {'int': 6018} |
| `chromeRendererMaxPssKb` | {'int': 6018} |
| `chromeRendererPssKb` | {'int': 6018} |
| `chromeRenderers` | {'int': 6018} |
| `chromeTabs` | {'int': 6018} |
| `chromeTabsProbedProfiles` | {'int': 6018} |
| `chromeUtilityPssKb` | {'int': 6018} |
| `desktopPssKb` | {'int': 6018} |
| `hostPssKb` | {'int': 6018} |
| `kind` | {'str': 6018} |
| `memAvailableKb` | {'int': 6018} |
| `memTotalKb` | {'int': 6018} |
| `otherPssKb` | {'int': 6018} |
| `processes` | {'int': 6018} |
| `pssFallbackProcesses` | {'int': 6018} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
