# sandbox_telemetry_parse — 2026-11-12 09:03:14 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2053528 lines=4546
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4537 |
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
| `chromeBrowserPssKb` | {'int': 4537} |
| `chromeGpuPssKb` | {'int': 4537} |
| `chromeOtherPssKb` | {'int': 4537} |
| `chromeProcesses` | {'int': 4537} |
| `chromeProfiles` | {'int': 4537} |
| `chromeRendererMaxPssKb` | {'int': 4537} |
| `chromeRendererPssKb` | {'int': 4537} |
| `chromeRenderers` | {'int': 4537} |
| `chromeTabs` | {'int': 4537} |
| `chromeTabsProbedProfiles` | {'int': 4537} |
| `chromeUtilityPssKb` | {'int': 4537} |
| `desktopPssKb` | {'int': 4537} |
| `hostPssKb` | {'int': 4537} |
| `kind` | {'str': 4537} |
| `memAvailableKb` | {'int': 4537} |
| `memTotalKb` | {'int': 4537} |
| `otherPssKb` | {'int': 4537} |
| `processes` | {'int': 4537} |
| `pssFallbackProcesses` | {'int': 4537} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
