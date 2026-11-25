# sandbox_telemetry_parse — 2026-11-25 23:29:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2973130 lines=6586
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6571 |
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
| `chromeBrowserPssKb` | {'int': 6571} |
| `chromeGpuPssKb` | {'int': 6571} |
| `chromeOtherPssKb` | {'int': 6571} |
| `chromeProcesses` | {'int': 6571} |
| `chromeProfiles` | {'int': 6571} |
| `chromeRendererMaxPssKb` | {'int': 6571} |
| `chromeRendererPssKb` | {'int': 6571} |
| `chromeRenderers` | {'int': 6571} |
| `chromeTabs` | {'int': 6571} |
| `chromeTabsProbedProfiles` | {'int': 6571} |
| `chromeUtilityPssKb` | {'int': 6571} |
| `desktopPssKb` | {'int': 6571} |
| `hostPssKb` | {'int': 6571} |
| `kind` | {'str': 6571} |
| `memAvailableKb` | {'int': 6571} |
| `memTotalKb` | {'int': 6571} |
| `otherPssKb` | {'int': 6571} |
| `processes` | {'int': 6571} |
| `pssFallbackProcesses` | {'int': 6571} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
