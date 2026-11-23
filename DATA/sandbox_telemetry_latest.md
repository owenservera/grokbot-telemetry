# sandbox_telemetry_parse — 2026-11-24 00:03:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2046854 lines=4538
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4523 |
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
| `chromeBrowserPssKb` | {'int': 4523} |
| `chromeGpuPssKb` | {'int': 4523} |
| `chromeOtherPssKb` | {'int': 4523} |
| `chromeProcesses` | {'int': 4523} |
| `chromeProfiles` | {'int': 4523} |
| `chromeRendererMaxPssKb` | {'int': 4523} |
| `chromeRendererPssKb` | {'int': 4523} |
| `chromeRenderers` | {'int': 4523} |
| `chromeTabs` | {'int': 4523} |
| `chromeTabsProbedProfiles` | {'int': 4523} |
| `chromeUtilityPssKb` | {'int': 4523} |
| `desktopPssKb` | {'int': 4523} |
| `hostPssKb` | {'int': 4523} |
| `kind` | {'str': 4523} |
| `memAvailableKb` | {'int': 4523} |
| `memTotalKb` | {'int': 4523} |
| `otherPssKb` | {'int': 4523} |
| `processes` | {'int': 4523} |
| `pssFallbackProcesses` | {'int': 4523} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
