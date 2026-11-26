# sandbox_telemetry_parse — 2026-11-26 02:34:40 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3035552 lines=6724
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6709 |
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
| `chromeBrowserPssKb` | {'int': 6709} |
| `chromeGpuPssKb` | {'int': 6709} |
| `chromeOtherPssKb` | {'int': 6709} |
| `chromeProcesses` | {'int': 6709} |
| `chromeProfiles` | {'int': 6709} |
| `chromeRendererMaxPssKb` | {'int': 6709} |
| `chromeRendererPssKb` | {'int': 6709} |
| `chromeRenderers` | {'int': 6709} |
| `chromeTabs` | {'int': 6709} |
| `chromeTabsProbedProfiles` | {'int': 6709} |
| `chromeUtilityPssKb` | {'int': 6709} |
| `desktopPssKb` | {'int': 6709} |
| `hostPssKb` | {'int': 6709} |
| `kind` | {'str': 6709} |
| `memAvailableKb` | {'int': 6709} |
| `memTotalKb` | {'int': 6709} |
| `otherPssKb` | {'int': 6709} |
| `processes` | {'int': 6709} |
| `pssFallbackProcesses` | {'int': 6709} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
