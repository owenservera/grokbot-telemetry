# sandbox_telemetry_parse — 2026-11-10 13:22:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1154367 lines=2559
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2550 |
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
| `chromeBrowserPssKb` | {'int': 2550} |
| `chromeGpuPssKb` | {'int': 2550} |
| `chromeOtherPssKb` | {'int': 2550} |
| `chromeProcesses` | {'int': 2550} |
| `chromeProfiles` | {'int': 2550} |
| `chromeRendererMaxPssKb` | {'int': 2550} |
| `chromeRendererPssKb` | {'int': 2550} |
| `chromeRenderers` | {'int': 2550} |
| `chromeTabs` | {'int': 2550} |
| `chromeTabsProbedProfiles` | {'int': 2550} |
| `chromeUtilityPssKb` | {'int': 2550} |
| `desktopPssKb` | {'int': 2550} |
| `hostPssKb` | {'int': 2550} |
| `kind` | {'str': 2550} |
| `memAvailableKb` | {'int': 2550} |
| `memTotalKb` | {'int': 2550} |
| `otherPssKb` | {'int': 2550} |
| `processes` | {'int': 2550} |
| `pssFallbackProcesses` | {'int': 2550} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
