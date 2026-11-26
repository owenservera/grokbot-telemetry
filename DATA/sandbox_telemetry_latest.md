# sandbox_telemetry_parse — 2026-11-26 01:06:30 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3006605 lines=6660
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6645 |
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
| `chromeBrowserPssKb` | {'int': 6645} |
| `chromeGpuPssKb` | {'int': 6645} |
| `chromeOtherPssKb` | {'int': 6645} |
| `chromeProcesses` | {'int': 6645} |
| `chromeProfiles` | {'int': 6645} |
| `chromeRendererMaxPssKb` | {'int': 6645} |
| `chromeRendererPssKb` | {'int': 6645} |
| `chromeRenderers` | {'int': 6645} |
| `chromeTabs` | {'int': 6645} |
| `chromeTabsProbedProfiles` | {'int': 6645} |
| `chromeUtilityPssKb` | {'int': 6645} |
| `desktopPssKb` | {'int': 6645} |
| `hostPssKb` | {'int': 6645} |
| `kind` | {'str': 6645} |
| `memAvailableKb` | {'int': 6645} |
| `memTotalKb` | {'int': 6645} |
| `otherPssKb` | {'int': 6645} |
| `processes` | {'int': 6645} |
| `pssFallbackProcesses` | {'int': 6645} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
