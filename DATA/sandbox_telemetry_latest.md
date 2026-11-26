# sandbox_telemetry_parse — 2026-11-26 03:09:17 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3045952 lines=6747
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6732 |
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
| `chromeBrowserPssKb` | {'int': 6732} |
| `chromeGpuPssKb` | {'int': 6732} |
| `chromeOtherPssKb` | {'int': 6732} |
| `chromeProcesses` | {'int': 6732} |
| `chromeProfiles` | {'int': 6732} |
| `chromeRendererMaxPssKb` | {'int': 6732} |
| `chromeRendererPssKb` | {'int': 6732} |
| `chromeRenderers` | {'int': 6732} |
| `chromeTabs` | {'int': 6732} |
| `chromeTabsProbedProfiles` | {'int': 6732} |
| `chromeUtilityPssKb` | {'int': 6732} |
| `desktopPssKb` | {'int': 6732} |
| `hostPssKb` | {'int': 6732} |
| `kind` | {'str': 6732} |
| `memAvailableKb` | {'int': 6732} |
| `memTotalKb` | {'int': 6732} |
| `otherPssKb` | {'int': 6732} |
| `processes` | {'int': 6732} |
| `pssFallbackProcesses` | {'int': 6732} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
