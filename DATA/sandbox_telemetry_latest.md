# sandbox_telemetry_parse — 2026-11-24 21:02:30 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2449018 lines=5427
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5412 |
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
| `chromeBrowserPssKb` | {'int': 5412} |
| `chromeGpuPssKb` | {'int': 5412} |
| `chromeOtherPssKb` | {'int': 5412} |
| `chromeProcesses` | {'int': 5412} |
| `chromeProfiles` | {'int': 5412} |
| `chromeRendererMaxPssKb` | {'int': 5412} |
| `chromeRendererPssKb` | {'int': 5412} |
| `chromeRenderers` | {'int': 5412} |
| `chromeTabs` | {'int': 5412} |
| `chromeTabsProbedProfiles` | {'int': 5412} |
| `chromeUtilityPssKb` | {'int': 5412} |
| `desktopPssKb` | {'int': 5412} |
| `hostPssKb` | {'int': 5412} |
| `kind` | {'str': 5412} |
| `memAvailableKb` | {'int': 5412} |
| `memTotalKb` | {'int': 5412} |
| `otherPssKb` | {'int': 5412} |
| `processes` | {'int': 5412} |
| `pssFallbackProcesses` | {'int': 5412} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
