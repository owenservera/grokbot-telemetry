# sandbox_telemetry_parse — 2026-11-11 06:49:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1511396 lines=3348
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3339 |
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
| `chromeBrowserPssKb` | {'int': 3339} |
| `chromeGpuPssKb` | {'int': 3339} |
| `chromeOtherPssKb` | {'int': 3339} |
| `chromeProcesses` | {'int': 3339} |
| `chromeProfiles` | {'int': 3339} |
| `chromeRendererMaxPssKb` | {'int': 3339} |
| `chromeRendererPssKb` | {'int': 3339} |
| `chromeRenderers` | {'int': 3339} |
| `chromeTabs` | {'int': 3339} |
| `chromeTabsProbedProfiles` | {'int': 3339} |
| `chromeUtilityPssKb` | {'int': 3339} |
| `desktopPssKb` | {'int': 3339} |
| `hostPssKb` | {'int': 3339} |
| `kind` | {'str': 3339} |
| `memAvailableKb` | {'int': 3339} |
| `memTotalKb` | {'int': 3339} |
| `otherPssKb` | {'int': 3339} |
| `processes` | {'int': 3339} |
| `pssFallbackProcesses` | {'int': 3339} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
