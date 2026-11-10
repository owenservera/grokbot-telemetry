# sandbox_telemetry_parse — 2026-11-10 16:35:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1220914 lines=2706
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2697 |
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
| `chromeBrowserPssKb` | {'int': 2697} |
| `chromeGpuPssKb` | {'int': 2697} |
| `chromeOtherPssKb` | {'int': 2697} |
| `chromeProcesses` | {'int': 2697} |
| `chromeProfiles` | {'int': 2697} |
| `chromeRendererMaxPssKb` | {'int': 2697} |
| `chromeRendererPssKb` | {'int': 2697} |
| `chromeRenderers` | {'int': 2697} |
| `chromeTabs` | {'int': 2697} |
| `chromeTabsProbedProfiles` | {'int': 2697} |
| `chromeUtilityPssKb` | {'int': 2697} |
| `desktopPssKb` | {'int': 2697} |
| `hostPssKb` | {'int': 2697} |
| `kind` | {'str': 2697} |
| `memAvailableKb` | {'int': 2697} |
| `memTotalKb` | {'int': 2697} |
| `otherPssKb` | {'int': 2697} |
| `processes` | {'int': 2697} |
| `pssFallbackProcesses` | {'int': 2697} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
