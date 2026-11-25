# sandbox_telemetry_parse — 2026-11-25 03:03:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2563874 lines=5681
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5666 |
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
| `chromeBrowserPssKb` | {'int': 5666} |
| `chromeGpuPssKb` | {'int': 5666} |
| `chromeOtherPssKb` | {'int': 5666} |
| `chromeProcesses` | {'int': 5666} |
| `chromeProfiles` | {'int': 5666} |
| `chromeRendererMaxPssKb` | {'int': 5666} |
| `chromeRendererPssKb` | {'int': 5666} |
| `chromeRenderers` | {'int': 5666} |
| `chromeTabs` | {'int': 5666} |
| `chromeTabsProbedProfiles` | {'int': 5666} |
| `chromeUtilityPssKb` | {'int': 5666} |
| `desktopPssKb` | {'int': 5666} |
| `hostPssKb` | {'int': 5666} |
| `kind` | {'str': 5666} |
| `memAvailableKb` | {'int': 5666} |
| `memTotalKb` | {'int': 5666} |
| `otherPssKb` | {'int': 5666} |
| `processes` | {'int': 5666} |
| `pssFallbackProcesses` | {'int': 5666} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
