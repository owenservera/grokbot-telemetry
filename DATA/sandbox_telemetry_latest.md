# sandbox_telemetry_parse — 2026-11-25 19:32:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2892186 lines=6407
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6392 |
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
| `chromeBrowserPssKb` | {'int': 6392} |
| `chromeGpuPssKb` | {'int': 6392} |
| `chromeOtherPssKb` | {'int': 6392} |
| `chromeProcesses` | {'int': 6392} |
| `chromeProfiles` | {'int': 6392} |
| `chromeRendererMaxPssKb` | {'int': 6392} |
| `chromeRendererPssKb` | {'int': 6392} |
| `chromeRenderers` | {'int': 6392} |
| `chromeTabs` | {'int': 6392} |
| `chromeTabsProbedProfiles` | {'int': 6392} |
| `chromeUtilityPssKb` | {'int': 6392} |
| `desktopPssKb` | {'int': 6392} |
| `hostPssKb` | {'int': 6392} |
| `kind` | {'str': 6392} |
| `memAvailableKb` | {'int': 6392} |
| `memTotalKb` | {'int': 6392} |
| `otherPssKb` | {'int': 6392} |
| `processes` | {'int': 6392} |
| `pssFallbackProcesses` | {'int': 6392} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
