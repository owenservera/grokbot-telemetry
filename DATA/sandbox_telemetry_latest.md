# sandbox_telemetry_parse — 2026-11-25 12:03:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2747942 lines=6088
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6073 |
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
| `chromeBrowserPssKb` | {'int': 6073} |
| `chromeGpuPssKb` | {'int': 6073} |
| `chromeOtherPssKb` | {'int': 6073} |
| `chromeProcesses` | {'int': 6073} |
| `chromeProfiles` | {'int': 6073} |
| `chromeRendererMaxPssKb` | {'int': 6073} |
| `chromeRendererPssKb` | {'int': 6073} |
| `chromeRenderers` | {'int': 6073} |
| `chromeTabs` | {'int': 6073} |
| `chromeTabsProbedProfiles` | {'int': 6073} |
| `chromeUtilityPssKb` | {'int': 6073} |
| `desktopPssKb` | {'int': 6073} |
| `hostPssKb` | {'int': 6073} |
| `kind` | {'str': 6073} |
| `memAvailableKb` | {'int': 6073} |
| `memTotalKb` | {'int': 6073} |
| `otherPssKb` | {'int': 6073} |
| `processes` | {'int': 6073} |
| `pssFallbackProcesses` | {'int': 6073} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
