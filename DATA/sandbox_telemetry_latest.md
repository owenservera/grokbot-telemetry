# sandbox_telemetry_parse — 2026-11-26 10:55:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3220612 lines=7133
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 7118 |
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
| `chromeBrowserPssKb` | {'int': 7118} |
| `chromeGpuPssKb` | {'int': 7118} |
| `chromeOtherPssKb` | {'int': 7118} |
| `chromeProcesses` | {'int': 7118} |
| `chromeProfiles` | {'int': 7118} |
| `chromeRendererMaxPssKb` | {'int': 7118} |
| `chromeRendererPssKb` | {'int': 7118} |
| `chromeRenderers` | {'int': 7118} |
| `chromeTabs` | {'int': 7118} |
| `chromeTabsProbedProfiles` | {'int': 7118} |
| `chromeUtilityPssKb` | {'int': 7118} |
| `desktopPssKb` | {'int': 7118} |
| `hostPssKb` | {'int': 7118} |
| `kind` | {'str': 7118} |
| `memAvailableKb` | {'int': 7118} |
| `memTotalKb` | {'int': 7118} |
| `otherPssKb` | {'int': 7118} |
| `processes` | {'int': 7118} |
| `pssFallbackProcesses` | {'int': 7118} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
