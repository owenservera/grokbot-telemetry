# sandbox_telemetry_parse — 2026-11-26 08:28:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3161764 lines=7003
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6988 |
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
| `chromeBrowserPssKb` | {'int': 6988} |
| `chromeGpuPssKb` | {'int': 6988} |
| `chromeOtherPssKb` | {'int': 6988} |
| `chromeProcesses` | {'int': 6988} |
| `chromeProfiles` | {'int': 6988} |
| `chromeRendererMaxPssKb` | {'int': 6988} |
| `chromeRendererPssKb` | {'int': 6988} |
| `chromeRenderers` | {'int': 6988} |
| `chromeTabs` | {'int': 6988} |
| `chromeTabsProbedProfiles` | {'int': 6988} |
| `chromeUtilityPssKb` | {'int': 6988} |
| `desktopPssKb` | {'int': 6988} |
| `hostPssKb` | {'int': 6988} |
| `kind` | {'str': 6988} |
| `memAvailableKb` | {'int': 6988} |
| `memTotalKb` | {'int': 6988} |
| `otherPssKb` | {'int': 6988} |
| `processes` | {'int': 6988} |
| `pssFallbackProcesses` | {'int': 6988} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
