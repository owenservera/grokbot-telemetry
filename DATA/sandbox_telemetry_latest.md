# sandbox_telemetry_parse — 2026-11-25 23:19:17 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2968601 lines=6576
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6561 |
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
| `chromeBrowserPssKb` | {'int': 6561} |
| `chromeGpuPssKb` | {'int': 6561} |
| `chromeOtherPssKb` | {'int': 6561} |
| `chromeProcesses` | {'int': 6561} |
| `chromeProfiles` | {'int': 6561} |
| `chromeRendererMaxPssKb` | {'int': 6561} |
| `chromeRendererPssKb` | {'int': 6561} |
| `chromeRenderers` | {'int': 6561} |
| `chromeTabs` | {'int': 6561} |
| `chromeTabsProbedProfiles` | {'int': 6561} |
| `chromeUtilityPssKb` | {'int': 6561} |
| `desktopPssKb` | {'int': 6561} |
| `hostPssKb` | {'int': 6561} |
| `kind` | {'str': 6561} |
| `memAvailableKb` | {'int': 6561} |
| `memTotalKb` | {'int': 6561} |
| `otherPssKb` | {'int': 6561} |
| `processes` | {'int': 6561} |
| `pssFallbackProcesses` | {'int': 6561} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
