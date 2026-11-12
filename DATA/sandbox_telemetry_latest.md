# sandbox_telemetry_parse — 2026-11-12 10:19:38 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2081599 lines=4608
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4599 |
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
| `chromeBrowserPssKb` | {'int': 4599} |
| `chromeGpuPssKb` | {'int': 4599} |
| `chromeOtherPssKb` | {'int': 4599} |
| `chromeProcesses` | {'int': 4599} |
| `chromeProfiles` | {'int': 4599} |
| `chromeRendererMaxPssKb` | {'int': 4599} |
| `chromeRendererPssKb` | {'int': 4599} |
| `chromeRenderers` | {'int': 4599} |
| `chromeTabs` | {'int': 4599} |
| `chromeTabsProbedProfiles` | {'int': 4599} |
| `chromeUtilityPssKb` | {'int': 4599} |
| `desktopPssKb` | {'int': 4599} |
| `hostPssKb` | {'int': 4599} |
| `kind` | {'str': 4599} |
| `memAvailableKb` | {'int': 4599} |
| `memTotalKb` | {'int': 4599} |
| `otherPssKb` | {'int': 4599} |
| `processes` | {'int': 4599} |
| `pssFallbackProcesses` | {'int': 4599} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
